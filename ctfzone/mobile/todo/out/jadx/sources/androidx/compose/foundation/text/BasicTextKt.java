package androidx.compose.foundation.text;

import androidx.compose.foundation.text.modifiers.SelectableTextAnnotatedStringElement;
import androidx.compose.foundation.text.modifiers.SelectionController;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringElement;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNodeKt;
import androidx.compose.foundation.text.selection.SelectionColors;
import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.profileinstaller.ProfileVerifier;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BasicText.kt */
@Metadata(d1 = {"\u0000¦\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0084\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\u0014\b\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001a\u0090\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\u0014\b\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00132\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001b\u001az\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0014\b\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001ad\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00142\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u0010H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001f\u001an\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00142\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0010H\u0007ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010 \u001az\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00142\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010!\u001a°\u0001\u0010\"\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0006\u0010#\u001a\u00020\u000e2\u0014\b\u0002\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u00132\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010$\u001a\u00020%2\b\u0010&\u001a\u0004\u0018\u00010'2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0014\u0010(\u001a\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u0001\u0018\u00010\tH\u0003ø\u0001\u0000¢\u0006\u0004\b*\u0010+\u001a@\u0010,\u001a\u001e\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020/\u0012\f\u0012\n\u0012\u0004\u0012\u000201\u0018\u0001000.\u0018\u00010-2\f\u00102\u001a\b\u0012\u0004\u0012\u0002030-2\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u000e00H\u0002\u001a\u001e\u00105\u001a\u000e\u0012\u0004\u0012\u000207\u0012\u0004\u0012\u000207062\b\u00108\u001a\u0004\u0018\u000109H\u0002\u001aÂ\u0001\u0010:\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010$\u001a\u00020%2\u0014\u0010;\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020=0<\u0018\u00010-2\u001c\u0010>\u001a\u0018\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010?0-\u0012\u0004\u0012\u00020\u0001\u0018\u00010\t2\b\u0010&\u001a\u0004\u0018\u00010'2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0014\u0010(\u001a\u0010\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u0001\u0018\u00010\tH\u0002ø\u0001\u0000¢\u0006\u0004\b@\u0010A\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006B²\u0006\n\u0010C\u001a\u00020\u0003X\u008a\u008e\u0002"}, d2 = {"BasicText", "", "text", "Landroidx/compose/ui/text/AnnotatedString;", "modifier", "Landroidx/compose/ui/Modifier;", "style", "Landroidx/compose/ui/text/TextStyle;", "onTextLayout", "Lkotlin/Function1;", "Landroidx/compose/ui/text/TextLayoutResult;", "overflow", "Landroidx/compose/ui/text/style/TextOverflow;", "softWrap", "", "maxLines", "", "minLines", "inlineContent", "", "", "Landroidx/compose/foundation/text/InlineTextContent;", "BasicText-VhcvRP8", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/runtime/Composer;II)V", "color", "Landroidx/compose/ui/graphics/ColorProducer;", "BasicText-RWo7tUw", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILjava/util/Map;Landroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V", "BasicText-4YKlhWE", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILjava/util/Map;Landroidx/compose/runtime/Composer;II)V", "BasicText-BpD7jsM", "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZILandroidx/compose/runtime/Composer;II)V", "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/runtime/Composer;II)V", "(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/ColorProducer;Landroidx/compose/runtime/Composer;II)V", "LayoutWithLinksAndInlineContent", "hasInlineContent", "fontFamilyResolver", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "selectionController", "Landroidx/compose/foundation/text/modifiers/SelectionController;", "onShowTranslation", "Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringNode$TextSubstitutionValue;", "LayoutWithLinksAndInlineContent-vOo2fZY", "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function1;ZLjava/util/Map;Landroidx/compose/ui/text/TextStyle;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V", "measureWithTextRangeMeasureConstraints", "", "Lkotlin/Pair;", "Landroidx/compose/ui/layout/Placeable;", "Lkotlin/Function0;", "Landroidx/compose/ui/unit/IntOffset;", "measurables", "Landroidx/compose/ui/layout/Measurable;", "shouldMeasureLinks", "selectionIdSaver", "Landroidx/compose/runtime/saveable/Saver;", "", "selectionRegistrar", "Landroidx/compose/foundation/text/selection/SelectionRegistrar;", "textModifier", "placeholders", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/Placeholder;", "onPlaceholderLayout", "Landroidx/compose/ui/geometry/Rect;", "textModifier-cFh6CEA", "(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/SelectionController;Landroidx/compose/ui/graphics/ColorProducer;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;", "foundation_release", "displayedText"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BasicTextKt {
    /* JADX WARN: Removed duplicated region for block: B:163:0x0415  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0477  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x04a1  */
    /* renamed from: BasicText-VhcvRP8, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m977BasicTextVhcvRP8(final java.lang.String r42, androidx.compose.ui.Modifier r43, androidx.compose.ui.text.TextStyle r44, kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.TextLayoutResult, kotlin.Unit> r45, int r46, boolean r47, int r48, int r49, androidx.compose.ui.graphics.ColorProducer r50, androidx.compose.runtime.Composer r51, final int r52, final int r53) {
        /*
            Method dump skipped, instructions count: 1247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.BasicTextKt.m977BasicTextVhcvRP8(java.lang.String, androidx.compose.ui.Modifier, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function1, int, boolean, int, int, androidx.compose.ui.graphics.ColorProducer, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: BasicText-RWo7tUw, reason: not valid java name */
    public static final void m975BasicTextRWo7tUw(final AnnotatedString text, Modifier modifier, TextStyle style, Function1<? super TextLayoutResult, Unit> function1, int overflow, boolean softWrap, int maxLines, int minLines, Map<String, InlineTextContent> map, ColorProducer color, Composer $composer, final int $changed, final int i) {
        Function1 function12;
        int i2;
        Modifier modifier2;
        TextStyle style2;
        Function1 onTextLayout;
        int overflow2;
        boolean softWrap2;
        Map inlineContent;
        ColorProducer color2;
        int $dirty;
        SelectionController selectionController;
        int minLines2;
        int maxLines2;
        Composer $composer2;
        Object value$iv;
        Object value$iv2;
        Object value$iv3;
        Object value$iv4;
        Composer $composer3 = $composer.startRestartGroup(-1064305212);
        ComposerKt.sourceInformation($composer3, "C(BasicText)P(9,4,8,5,6:c#ui.text.style.TextOverflow,7,2,3,1)196@9257L7:BasicText.kt#423gt5");
        int $dirty2 = $changed;
        if ((i & 1) != 0) {
            $dirty2 |= 6;
        } else if (($changed & 6) == 0) {
            $dirty2 |= $composer3.changed(text) ? 4 : 2;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty2 |= 48;
        } else if (($changed & 48) == 0) {
            $dirty2 |= $composer3.changed(modifier) ? 32 : 16;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty2 |= 384;
        } else if (($changed & 384) == 0) {
            $dirty2 |= $composer3.changed(style) ? 256 : 128;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty2 |= 3072;
            function12 = function1;
        } else if (($changed & 3072) == 0) {
            function12 = function1;
            $dirty2 |= $composer3.changedInstance(function12) ? 2048 : 1024;
        } else {
            function12 = function1;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty2 |= 24576;
            i2 = overflow;
        } else if (($changed & 24576) == 0) {
            i2 = overflow;
            $dirty2 |= $composer3.changed(i2) ? 16384 : 8192;
        } else {
            i2 = overflow;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty2 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if (($changed & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            $dirty2 |= $composer3.changed(softWrap) ? 131072 : 65536;
        }
        int i8 = i & 64;
        if (i8 != 0) {
            $dirty2 |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty2 |= $composer3.changed(maxLines) ? 1048576 : 524288;
        }
        int i9 = i & 128;
        if (i9 != 0) {
            $dirty2 |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty2 |= $composer3.changed(minLines) ? 8388608 : 4194304;
        }
        int i10 = i & 256;
        if (i10 != 0) {
            $dirty2 |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty2 |= $composer3.changedInstance(map) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        int i11 = i & 512;
        if (i11 != 0) {
            $dirty2 |= 805306368;
        } else if (($changed & 805306368) == 0) {
            $dirty2 |= $composer3.changedInstance(color) ? 536870912 : 268435456;
        }
        if (($dirty2 & 306783379) == 306783378 && $composer3.getSkipping()) {
            $composer3.skipToGroupEnd();
            modifier2 = modifier;
            style2 = style;
            softWrap2 = softWrap;
            maxLines2 = maxLines;
            minLines2 = minLines;
            inlineContent = map;
            color2 = color;
            onTextLayout = function12;
            overflow2 = i2;
            $composer2 = $composer3;
        } else {
            modifier2 = i3 != 0 ? Modifier.INSTANCE : modifier;
            style2 = i4 != 0 ? TextStyle.INSTANCE.getDefault() : style;
            onTextLayout = i5 != 0 ? null : function12;
            overflow2 = i6 != 0 ? TextOverflow.INSTANCE.m6401getClipgIe3tQ8() : i2;
            softWrap2 = i7 != 0 ? true : softWrap;
            int maxLines3 = i8 != 0 ? Integer.MAX_VALUE : maxLines;
            int minLines3 = i9 != 0 ? 1 : minLines;
            inlineContent = i10 != 0 ? MapsKt.emptyMap() : map;
            color2 = i11 != 0 ? null : color;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1064305212, $dirty2, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:191)");
            }
            HeightInLinesModifierKt.validateMinMaxLines(minLines3, maxLines3);
            ProvidableCompositionLocal<SelectionRegistrar> localSelectionRegistrar = SelectionRegistrarKt.getLocalSelectionRegistrar();
            ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object objConsume = $composer3.consume(localSelectionRegistrar);
            ComposerKt.sourceInformationMarkerEnd($composer3);
            final SelectionRegistrar selectionRegistrar = (SelectionRegistrar) objConsume;
            if (selectionRegistrar != null) {
                $composer3.startReplaceGroup(-1584983428);
                ComposerKt.sourceInformation($composer3, "198@9393L7,200@9539L69,200@9456L152,203@9617L234");
                ProvidableCompositionLocal<SelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
                ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object objConsume2 = $composer3.consume(localTextSelectionColors);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                long backgroundSelectionColor = ((SelectionColors) objConsume2).getSelectionBackgroundColor();
                Object[] objArr = {selectionRegistrar};
                Saver<Long, Long> saverSelectionIdSaver = selectionIdSaver(selectionRegistrar);
                ComposerKt.sourceInformationMarkerStart($composer3, -328216839, "CC(remember):BasicText.kt#9igjgp");
                boolean invalid$iv = $composer3.changedInstance(selectionRegistrar);
                Object it$iv = $composer3.rememberedValue();
                if (invalid$iv || it$iv == Composer.INSTANCE.getEmpty()) {
                    value$iv3 = (Function0) new Function0<Long>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$selectionController$selectableId$2$1
                        {
                            super(0);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        public final Long invoke() {
                            return Long.valueOf(selectionRegistrar.nextSelectableId());
                        }
                    };
                    $dirty = $dirty2;
                    $composer3.updateRememberedValue(value$iv3);
                } else {
                    $dirty = $dirty2;
                    value$iv3 = it$iv;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                long selectableId = ((Number) RememberSaveableKt.m3589rememberSaveable(objArr, (Saver) saverSelectionIdSaver, (String) null, (Function0) value$iv3, $composer3, 0, 4)).longValue();
                ComposerKt.sourceInformationMarkerStart($composer3, -328214178, "CC(remember):BasicText.kt#9igjgp");
                boolean invalid$iv2 = $composer3.changed(selectableId) | $composer3.changed(selectionRegistrar) | $composer3.changed(backgroundSelectionColor);
                Object it$iv2 = $composer3.rememberedValue();
                if (invalid$iv2 || it$iv2 == Composer.INSTANCE.getEmpty()) {
                    value$iv4 = new SelectionController(selectableId, selectionRegistrar, backgroundSelectionColor, null, 8, null);
                    $composer3.updateRememberedValue(value$iv4);
                } else {
                    value$iv4 = it$iv2;
                }
                ComposerKt.sourceInformationMarkerEnd($composer3);
                $composer3.endReplaceGroup();
                selectionController = (SelectionController) value$iv4;
            } else {
                $dirty = $dirty2;
                $composer3.startReplaceGroup(-1584467526);
                $composer3.endReplaceGroup();
                selectionController = null;
            }
            boolean hasInlineContent = AnnotatedStringResolveInlineContentKt.hasInlineContent(text);
            boolean hasLinks = TextAnnotatedStringNodeKt.hasLinks(text);
            if (hasInlineContent || hasLinks) {
                minLines2 = minLines3;
                maxLines2 = maxLines3;
                $composer2 = $composer3;
                int $dirty3 = $dirty;
                $composer2.startReplaceGroup(-1583391888);
                ComposerKt.sourceInformation($composer2, "241@11076L39,254@11574L7,257@11697L256,243@11125L838");
                ComposerKt.sourceInformationMarkerStart($composer2, -328167685, "CC(remember):BasicText.kt#9igjgp");
                boolean invalid$iv3 = ($dirty3 & 14) == 4;
                Object it$iv3 = $composer2.rememberedValue();
                if (invalid$iv3 || it$iv3 == Composer.INSTANCE.getEmpty()) {
                    value$iv = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(text, null, 2, null);
                    $composer2.updateRememberedValue(value$iv);
                } else {
                    value$iv = it$iv3;
                }
                final MutableState displayedText$delegate = (MutableState) value$iv;
                ComposerKt.sourceInformationMarkerEnd($composer2);
                AnnotatedString annotatedStringBasicText_RWo7tUw$lambda$5 = BasicText_RWo7tUw$lambda$5(displayedText$delegate);
                ProvidableCompositionLocal<FontFamily.Resolver> localFontFamilyResolver = CompositionLocalsKt.getLocalFontFamilyResolver();
                ComposerKt.sourceInformationMarkerStart($composer2, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object objConsume3 = $composer2.consume(localFontFamilyResolver);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                FontFamily.Resolver resolver = (FontFamily.Resolver) objConsume3;
                ComposerKt.sourceInformationMarkerStart($composer2, -328147596, "CC(remember):BasicText.kt#9igjgp");
                boolean invalid$iv4 = $composer2.changed(displayedText$delegate);
                Object it$iv4 = $composer2.rememberedValue();
                if (invalid$iv4 || it$iv4 == Composer.INSTANCE.getEmpty()) {
                    value$iv2 = new Function1<TextAnnotatedStringNode.TextSubstitutionValue, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$2$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue) {
                            invoke2(textSubstitutionValue);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(TextAnnotatedStringNode.TextSubstitutionValue substitutionValue) {
                            AnnotatedString original;
                            MutableState<AnnotatedString> mutableState = displayedText$delegate;
                            if (substitutionValue.isShowingSubstitution()) {
                                original = substitutionValue.getSubstitution();
                            } else {
                                original = substitutionValue.getOriginal();
                            }
                            mutableState.setValue(original);
                        }
                    };
                    $composer2.updateRememberedValue(value$iv2);
                } else {
                    value$iv2 = it$iv4;
                }
                ComposerKt.sourceInformationMarkerEnd($composer2);
                m978LayoutWithLinksAndInlineContentvOo2fZY(modifier2, annotatedStringBasicText_RWo7tUw$lambda$5, onTextLayout, hasInlineContent, inlineContent, style2, overflow2, softWrap2, maxLines2, minLines2, resolver, selectionController, color2, (Function1) value$iv2, $composer2, (($dirty3 >> 3) & 14) | (($dirty3 >> 3) & 896) | (($dirty3 >> 12) & 57344) | (($dirty3 << 9) & 458752) | (($dirty3 << 6) & 3670016) | (($dirty3 << 6) & 29360128) | (($dirty3 << 6) & 234881024) | (($dirty3 << 6) & 1879048192), ($dirty3 >> 21) & 896, 0);
                $composer2.endReplaceGroup();
            } else {
                $composer3.startReplaceGroup(-1584294453);
                ComposerKt.sourceInformation($composer3, "229@10603L7,217@10089L814");
                Modifier modifierM4164graphicsLayerAp8cVGQ$default = GraphicsLayerModifierKt.m4164graphicsLayerAp8cVGQ$default(modifier2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null);
                ProvidableCompositionLocal<FontFamily.Resolver> localFontFamilyResolver2 = CompositionLocalsKt.getLocalFontFamilyResolver();
                ComposerKt.sourceInformationMarkerStart($composer3, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object objConsume4 = $composer3.consume(localFontFamilyResolver2);
                ComposerKt.sourceInformationMarkerEnd($composer3);
                minLines2 = minLines3;
                maxLines2 = maxLines3;
                Modifier modifier$iv = m980textModifiercFh6CEA(modifierM4164graphicsLayerAp8cVGQ$default, text, style2, onTextLayout, overflow2, softWrap2, maxLines3, minLines3, (FontFamily.Resolver) objConsume4, null, null, selectionController, color2, null);
                MeasurePolicy measurePolicy$iv = EmptyMeasurePolicy.INSTANCE;
                $composer2 = $composer3;
                ComposerKt.sourceInformationMarkerStart($composer2, 544976794, "CC(Layout)P(1)125@4862L23,128@5013L385:Layout.kt#80mrfh");
                int compositeKeyHash$iv = ComposablesKt.getCurrentCompositeKeyHash($composer2, 0);
                Modifier materialized$iv = ComposedModifierKt.materializeModifier($composer2, modifier$iv);
                CompositionLocalMap localMap$iv = $composer2.getCurrentCompositionLocalMap();
                Function0 factory$iv$iv = ComposeUiNode.INSTANCE.getConstructor();
                ComposerKt.sourceInformationMarkerStart($composer2, 1405779621, "CC(ReusableComposeNode):Composables.kt#9igjgp");
                if (!($composer2.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                $composer2.startReusableNode();
                if ($composer2.getInserting()) {
                    $composer2.createNode(factory$iv$iv);
                } else {
                    $composer2.useNode();
                }
                Composer $this$Layout_u24lambda_u241$iv = Updater.m3496constructorimpl($composer2);
                Updater.m3503setimpl($this$Layout_u24lambda_u241$iv, measurePolicy$iv, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m3503setimpl($this$Layout_u24lambda_u241$iv, localMap$iv, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
                Updater.m3503setimpl($this$Layout_u24lambda_u241$iv, materialized$iv, ComposeUiNode.INSTANCE.getSetModifier());
                Function2 block$iv$iv = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
                if ($this$Layout_u24lambda_u241$iv.getInserting() || !Intrinsics.areEqual($this$Layout_u24lambda_u241$iv.rememberedValue(), Integer.valueOf(compositeKeyHash$iv))) {
                    $this$Layout_u24lambda_u241$iv.updateRememberedValue(Integer.valueOf(compositeKeyHash$iv));
                    $this$Layout_u24lambda_u241$iv.apply(Integer.valueOf(compositeKeyHash$iv), block$iv$iv);
                }
                $composer2.endNode();
                ComposerKt.sourceInformationMarkerEnd($composer2);
                ComposerKt.sourceInformationMarkerEnd($composer2);
                $composer2.endReplaceGroup();
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier3 = modifier2;
            final TextStyle textStyle = style2;
            final Function1 function13 = onTextLayout;
            final int i12 = overflow2;
            final boolean z = softWrap2;
            final int i13 = maxLines2;
            final int i14 = minLines2;
            final Map map2 = inlineContent;
            final ColorProducer colorProducer = color2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i15) {
                    BasicTextKt.m975BasicTextRWo7tUw(text, modifier3, textStyle, function13, i12, z, i13, i14, map2, colorProducer, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    private static final AnnotatedString BasicText_RWo7tUw$lambda$5(MutableState<AnnotatedString> mutableState) {
        MutableState<AnnotatedString> $this$getValue$iv = mutableState;
        return $this$getValue$iv.getValue();
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* renamed from: BasicText-BpD7jsM, reason: not valid java name */
    public static final /* synthetic */ void m974BasicTextBpD7jsM(final String text, Modifier modifier, TextStyle style, Function1 onTextLayout, int overflow, boolean softWrap, int maxLines, Composer $composer, final int $changed, final int i) {
        TextStyle textStyle;
        Function1 onTextLayout2;
        int i2;
        boolean z;
        Modifier modifier2;
        TextStyle style2;
        int overflow2;
        boolean softWrap2;
        int maxLines2;
        Function1 onTextLayout3;
        Composer $composer2 = $composer.startRestartGroup(1022429478);
        ComposerKt.sourceInformation($composer2, "C(BasicText)P(6,1,5,2,3:c#ui.text.style.TextOverflow,4)279@12355L234:BasicText.kt#423gt5");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(text) ? 4 : 2;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
        } else if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(modifier) ? 32 : 16;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= 384;
            textStyle = style;
        } else if (($changed & 384) == 0) {
            textStyle = style;
            $dirty |= $composer2.changed(textStyle) ? 256 : 128;
        } else {
            textStyle = style;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty |= 3072;
            onTextLayout2 = onTextLayout;
        } else if (($changed & 3072) == 0) {
            onTextLayout2 = onTextLayout;
            $dirty |= $composer2.changedInstance(onTextLayout2) ? 2048 : 1024;
        } else {
            onTextLayout2 = onTextLayout;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty |= 24576;
            i2 = overflow;
        } else if (($changed & 24576) == 0) {
            i2 = overflow;
            $dirty |= $composer2.changed(i2) ? 16384 : 8192;
        } else {
            i2 = overflow;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z = softWrap;
        } else if ((196608 & $changed) == 0) {
            z = softWrap;
            $dirty |= $composer2.changed(z) ? 131072 : 65536;
        } else {
            z = softWrap;
        }
        int i8 = i & 64;
        if (i8 != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer2.changed(maxLines) ? 1048576 : 524288;
        }
        if (($dirty & 599187) == 599186 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier2 = modifier;
            maxLines2 = maxLines;
            onTextLayout3 = onTextLayout2;
            softWrap2 = z;
            overflow2 = i2;
            style2 = textStyle;
        } else {
            Modifier.Companion modifier3 = i3 != 0 ? Modifier.INSTANCE : modifier;
            TextStyle style3 = i4 != 0 ? TextStyle.INSTANCE.getDefault() : textStyle;
            if (i5 != 0) {
                onTextLayout2 = null;
            }
            int overflow3 = i6 != 0 ? TextOverflow.INSTANCE.m6401getClipgIe3tQ8() : i2;
            boolean softWrap3 = i7 != 0 ? true : z;
            int maxLines3 = i8 != 0 ? Integer.MAX_VALUE : maxLines;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1022429478, $dirty, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:278)");
            }
            m977BasicTextVhcvRP8(text, modifier3, style3, (Function1<? super TextLayoutResult, Unit>) onTextLayout2, overflow3, softWrap3, maxLines3, 1, (ColorProducer) null, $composer2, ($dirty & 14) | 12582912 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty), 256);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            modifier2 = modifier3;
            style2 = style3;
            overflow2 = overflow3;
            softWrap2 = softWrap3;
            maxLines2 = maxLines3;
            onTextLayout3 = onTextLayout2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier2;
            final TextStyle textStyle2 = style2;
            final Function1 function1 = onTextLayout3;
            final int i9 = overflow2;
            final boolean z2 = softWrap2;
            final int i10 = maxLines2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$4
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i11) {
                    BasicTextKt.m974BasicTextBpD7jsM(text, modifier4, textStyle2, function1, i9, z2, i10, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* renamed from: BasicText-4YKlhWE, reason: not valid java name */
    public static final /* synthetic */ void m972BasicText4YKlhWE(final AnnotatedString text, Modifier modifier, TextStyle style, Function1 onTextLayout, int overflow, boolean softWrap, int maxLines, Map inlineContent, Composer $composer, final int $changed, final int i) {
        Function1 onTextLayout2;
        int i2;
        boolean z;
        Map inlineContent2;
        Modifier modifier2;
        TextStyle style2;
        int overflow2;
        boolean softWrap2;
        int maxLines2;
        Function1 onTextLayout3;
        Composer $composer2 = $composer.startRestartGroup(-648605928);
        ComposerKt.sourceInformation($composer2, "C(BasicText)P(7,2,6,3,4:c#ui.text.style.TextOverflow,5,1)303@13046L273:BasicText.kt#423gt5");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(text) ? 4 : 2;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
        } else if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(modifier) ? 32 : 16;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= 384;
        } else if (($changed & 384) == 0) {
            $dirty |= $composer2.changed(style) ? 256 : 128;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty |= 3072;
            onTextLayout2 = onTextLayout;
        } else if (($changed & 3072) == 0) {
            onTextLayout2 = onTextLayout;
            $dirty |= $composer2.changedInstance(onTextLayout2) ? 2048 : 1024;
        } else {
            onTextLayout2 = onTextLayout;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty |= 24576;
            i2 = overflow;
        } else if (($changed & 24576) == 0) {
            i2 = overflow;
            $dirty |= $composer2.changed(i2) ? 16384 : 8192;
        } else {
            i2 = overflow;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z = softWrap;
        } else if ((196608 & $changed) == 0) {
            z = softWrap;
            $dirty |= $composer2.changed(z) ? 131072 : 65536;
        } else {
            z = softWrap;
        }
        int i8 = i & 64;
        if (i8 != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer2.changed(maxLines) ? 1048576 : 524288;
        }
        int i9 = i & 128;
        if (i9 != 0) {
            $dirty |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty |= $composer2.changedInstance(inlineContent) ? 8388608 : 4194304;
        }
        if (($dirty & 4793491) == 4793490 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier2 = modifier;
            maxLines2 = maxLines;
            inlineContent2 = inlineContent;
            onTextLayout3 = onTextLayout2;
            softWrap2 = z;
            overflow2 = i2;
            style2 = style;
        } else {
            Modifier.Companion modifier3 = i3 != 0 ? Modifier.INSTANCE : modifier;
            TextStyle style3 = i4 != 0 ? TextStyle.INSTANCE.getDefault() : style;
            if (i5 != 0) {
                onTextLayout2 = null;
            }
            int overflow3 = i6 != 0 ? TextOverflow.INSTANCE.m6401getClipgIe3tQ8() : i2;
            boolean softWrap3 = i7 != 0 ? true : z;
            int maxLines3 = i8 != 0 ? Integer.MAX_VALUE : maxLines;
            Map inlineContent3 = i9 != 0 ? MapsKt.emptyMap() : inlineContent;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-648605928, $dirty, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:302)");
            }
            m975BasicTextRWo7tUw(text, modifier3, style3, onTextLayout2, overflow3, softWrap3, maxLines3, 1, inlineContent3, null, $composer2, ($dirty & 14) | 12582912 | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty) | (($dirty << 3) & 234881024), 512);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            inlineContent2 = inlineContent3;
            modifier2 = modifier3;
            style2 = style3;
            overflow2 = overflow3;
            softWrap2 = softWrap3;
            maxLines2 = maxLines3;
            onTextLayout3 = onTextLayout2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier2;
            final TextStyle textStyle = style2;
            final Function1 function1 = onTextLayout3;
            final int i10 = overflow2;
            final boolean z2 = softWrap2;
            final int i11 = maxLines2;
            final Map map = inlineContent2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i12) {
                    BasicTextKt.m972BasicText4YKlhWE(text, modifier4, textStyle, function1, i10, z2, i11, map, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compat")
    /* renamed from: BasicText-4YKlhWE, reason: not valid java name */
    public static final /* synthetic */ void m973BasicText4YKlhWE(final String text, Modifier modifier, TextStyle style, Function1 onTextLayout, int overflow, boolean softWrap, int maxLines, int minLines, Composer $composer, final int $changed, final int i) {
        Function1 onTextLayout2;
        int i2;
        boolean z;
        Modifier.Companion modifier2;
        TextStyle style2;
        int overflow2;
        boolean softWrap2;
        int maxLines2;
        int minLines2;
        int minLines3;
        Modifier modifier3;
        TextStyle style3;
        int overflow3;
        boolean softWrap3;
        int maxLines3;
        Function1 onTextLayout3;
        Composer $composer2 = $composer.startRestartGroup(1542716361);
        ComposerKt.sourceInformation($composer2, "C(BasicText)P(7,2,6,3,4:c#ui.text.style.TextOverflow,5)327@13717L86:BasicText.kt#423gt5");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(text) ? 4 : 2;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
        } else if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(modifier) ? 32 : 16;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= 384;
        } else if (($changed & 384) == 0) {
            $dirty |= $composer2.changed(style) ? 256 : 128;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty |= 3072;
            onTextLayout2 = onTextLayout;
        } else if (($changed & 3072) == 0) {
            onTextLayout2 = onTextLayout;
            $dirty |= $composer2.changedInstance(onTextLayout2) ? 2048 : 1024;
        } else {
            onTextLayout2 = onTextLayout;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty |= 24576;
            i2 = overflow;
        } else if (($changed & 24576) == 0) {
            i2 = overflow;
            $dirty |= $composer2.changed(i2) ? 16384 : 8192;
        } else {
            i2 = overflow;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z = softWrap;
        } else if ((196608 & $changed) == 0) {
            z = softWrap;
            $dirty |= $composer2.changed(z) ? 131072 : 65536;
        } else {
            z = softWrap;
        }
        int i8 = i & 64;
        if (i8 != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer2.changed(maxLines) ? 1048576 : 524288;
        }
        int i9 = i & 128;
        if (i9 != 0) {
            $dirty |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty |= $composer2.changed(minLines) ? 8388608 : 4194304;
        }
        if (($dirty & 4793491) == 4793490 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            modifier3 = modifier;
            maxLines3 = maxLines;
            minLines3 = minLines;
            onTextLayout3 = onTextLayout2;
            softWrap3 = z;
            overflow3 = i2;
            style3 = style;
        } else {
            if (i3 != 0) {
                modifier2 = Modifier.INSTANCE;
            } else {
                modifier2 = modifier;
            }
            if (i4 == 0) {
                style2 = style;
            } else {
                style2 = TextStyle.INSTANCE.getDefault();
            }
            if (i5 != 0) {
                onTextLayout2 = null;
            }
            if (i6 == 0) {
                overflow2 = i2;
            } else {
                overflow2 = TextOverflow.INSTANCE.m6401getClipgIe3tQ8();
            }
            if (i7 == 0) {
                softWrap2 = z;
            } else {
                softWrap2 = true;
            }
            if (i8 == 0) {
                maxLines2 = maxLines;
            } else {
                maxLines2 = Integer.MAX_VALUE;
            }
            if (i9 == 0) {
                minLines2 = minLines;
            } else {
                minLines2 = 1;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1542716361, $dirty, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:327)");
            }
            m977BasicTextVhcvRP8(text, modifier2, style2, (Function1<? super TextLayoutResult, Unit>) onTextLayout2, overflow2, softWrap2, maxLines2, minLines2, (ColorProducer) null, $composer2, ($dirty & 14) | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty) | (29360128 & $dirty), 256);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            minLines3 = minLines2;
            modifier3 = modifier2;
            style3 = style2;
            overflow3 = overflow2;
            softWrap3 = softWrap2;
            maxLines3 = maxLines2;
            onTextLayout3 = onTextLayout2;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier3;
            final TextStyle textStyle = style3;
            final Function1 function1 = onTextLayout3;
            final int i10 = overflow3;
            final boolean z2 = softWrap3;
            final int i11 = maxLines3;
            final int i12 = minLines3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$6
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i13) {
                    BasicTextKt.m973BasicText4YKlhWE(text, modifier4, textStyle, function1, i10, z2, i11, i12, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compat")
    /* renamed from: BasicText-VhcvRP8, reason: not valid java name */
    public static final /* synthetic */ void m976BasicTextVhcvRP8(final AnnotatedString text, Modifier modifier, TextStyle style, Function1 onTextLayout, int overflow, boolean softWrap, int maxLines, int minLines, Map inlineContent, Composer $composer, final int $changed, final int i) {
        int i2;
        boolean z;
        int minLines2;
        Modifier modifier2;
        Map inlineContent2;
        TextStyle style2;
        Function1 onTextLayout2;
        int overflow2;
        boolean softWrap2;
        int maxLines2;
        Composer $composer2 = $composer.startRestartGroup(851408699);
        ComposerKt.sourceInformation($composer2, "C(BasicText)P(8,3,7,4,5:c#ui.text.style.TextOverflow,6,1,2)341@14269L240:BasicText.kt#423gt5");
        int $dirty = $changed;
        if ((i & 1) != 0) {
            $dirty |= 6;
        } else if (($changed & 6) == 0) {
            $dirty |= $composer2.changed(text) ? 4 : 2;
        }
        int i3 = i & 2;
        if (i3 != 0) {
            $dirty |= 48;
        } else if (($changed & 48) == 0) {
            $dirty |= $composer2.changed(modifier) ? 32 : 16;
        }
        int i4 = i & 4;
        if (i4 != 0) {
            $dirty |= 384;
        } else if (($changed & 384) == 0) {
            $dirty |= $composer2.changed(style) ? 256 : 128;
        }
        int i5 = i & 8;
        if (i5 != 0) {
            $dirty |= 3072;
        } else if (($changed & 3072) == 0) {
            $dirty |= $composer2.changedInstance(onTextLayout) ? 2048 : 1024;
        }
        int i6 = i & 16;
        if (i6 != 0) {
            $dirty |= 24576;
            i2 = overflow;
        } else if (($changed & 24576) == 0) {
            i2 = overflow;
            $dirty |= $composer2.changed(i2) ? 16384 : 8192;
        } else {
            i2 = overflow;
        }
        int i7 = i & 32;
        if (i7 != 0) {
            $dirty |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            z = softWrap;
        } else if ((196608 & $changed) == 0) {
            z = softWrap;
            $dirty |= $composer2.changed(z) ? 131072 : 65536;
        } else {
            z = softWrap;
        }
        int i8 = i & 64;
        if (i8 != 0) {
            $dirty |= 1572864;
        } else if (($changed & 1572864) == 0) {
            $dirty |= $composer2.changed(maxLines) ? 1048576 : 524288;
        }
        int i9 = i & 128;
        if (i9 != 0) {
            $dirty |= 12582912;
        } else if (($changed & 12582912) == 0) {
            $dirty |= $composer2.changed(minLines) ? 8388608 : 4194304;
        }
        int i10 = i & 256;
        if (i10 != 0) {
            $dirty |= 100663296;
        } else if (($changed & 100663296) == 0) {
            $dirty |= $composer2.changedInstance(inlineContent) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if (($dirty & 38347923) == 38347922 && $composer2.getSkipping()) {
            $composer2.skipToGroupEnd();
            style2 = style;
            maxLines2 = maxLines;
            minLines2 = minLines;
            inlineContent2 = inlineContent;
            overflow2 = i2;
            softWrap2 = z;
            modifier2 = modifier;
            onTextLayout2 = onTextLayout;
        } else {
            Modifier.Companion modifier3 = i3 != 0 ? Modifier.INSTANCE : modifier;
            TextStyle style3 = i4 != 0 ? TextStyle.INSTANCE.getDefault() : style;
            Function1 onTextLayout3 = i5 != 0 ? null : onTextLayout;
            int overflow3 = i6 != 0 ? TextOverflow.INSTANCE.m6401getClipgIe3tQ8() : i2;
            boolean softWrap3 = i7 != 0 ? true : z;
            int maxLines3 = i8 != 0 ? Integer.MAX_VALUE : maxLines;
            int minLines3 = i9 != 0 ? 1 : minLines;
            Map inlineContent3 = i10 != 0 ? MapsKt.emptyMap() : inlineContent;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(851408699, $dirty, -1, "androidx.compose.foundation.text.BasicText (BasicText.kt:341)");
            }
            m975BasicTextRWo7tUw(text, modifier3, style3, onTextLayout3, overflow3, softWrap3, maxLines3, minLines3, inlineContent3, null, $composer2, ($dirty & 14) | ($dirty & 112) | ($dirty & 896) | ($dirty & 7168) | (57344 & $dirty) | (458752 & $dirty) | (3670016 & $dirty) | (29360128 & $dirty) | (234881024 & $dirty), 512);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            minLines2 = minLines3;
            modifier2 = modifier3;
            inlineContent2 = inlineContent3;
            style2 = style3;
            onTextLayout2 = onTextLayout3;
            overflow2 = overflow3;
            softWrap2 = softWrap3;
            maxLines2 = maxLines3;
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = $composer2.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Modifier modifier4 = modifier2;
            final TextStyle textStyle = style2;
            final Function1 function1 = onTextLayout2;
            final int i11 = overflow2;
            final boolean z2 = softWrap2;
            final int i12 = maxLines2;
            final int i13 = minLines2;
            final Map map = inlineContent2;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$BasicText$7
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                    invoke(composer, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer, int i14) {
                    BasicTextKt.m976BasicTextVhcvRP8(text, modifier4, textStyle, function1, i11, z2, i12, i13, map, composer, RecomposeScopeImplKt.updateChangedFlags($changed | 1), i);
                }
            });
        }
    }

    private static final Saver<Long, Long> selectionIdSaver(final SelectionRegistrar selectionRegistrar) {
        return SaverKt.Saver(new Function2<SaverScope, Long, Long>() { // from class: androidx.compose.foundation.text.BasicTextKt.selectionIdSaver.1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Long invoke(SaverScope saverScope, Long l) {
                return invoke(saverScope, l.longValue());
            }

            public final Long invoke(SaverScope $this$Saver, long it) {
                if (SelectionRegistrarKt.hasSelection(selectionRegistrar, it)) {
                    return Long.valueOf(it);
                }
                return null;
            }
        }, new Function1<Long, Long>() { // from class: androidx.compose.foundation.text.BasicTextKt.selectionIdSaver.2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Long invoke(Long l) {
                return invoke(l.longValue());
            }

            public final Long invoke(long it) {
                return Long.valueOf(it);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Pair<Placeable, Function0<IntOffset>>> measureWithTextRangeMeasureConstraints(List<? extends Measurable> list, Function0<Boolean> function0) {
        if (function0.invoke().booleanValue()) {
            TextRangeLayoutMeasureScope textRangeLayoutMeasureScope = new TextRangeLayoutMeasureScope();
            List $this$fastMapIndexedNotNull$iv = list;
            int $i$f$fastMapIndexedNotNull = 0;
            ArrayList target$iv = new ArrayList($this$fastMapIndexedNotNull$iv.size());
            List $this$fastForEachIndexed$iv$iv = $this$fastMapIndexedNotNull$iv;
            int $i$f$fastForEachIndexed = 0;
            int index$iv$iv = 0;
            int size = $this$fastForEachIndexed$iv$iv.size();
            while (index$iv$iv < size) {
                Object item$iv$iv = $this$fastForEachIndexed$iv$iv.get(index$iv$iv);
                Measurable measurable = (Measurable) item$iv$iv;
                Object parentData = measurable.getParentData();
                Intrinsics.checkNotNull(parentData, "null cannot be cast to non-null type androidx.compose.foundation.text.TextRangeLayoutModifier");
                TextRangeScopeMeasurePolicy rangeMeasurePolicy = ((TextRangeLayoutModifier) parentData).getMeasurePolicy();
                TextRangeLayoutMeasureResult rangeMeasureResult = rangeMeasurePolicy.measure(textRangeLayoutMeasureScope);
                TextRangeLayoutMeasureScope textRangeLayoutMeasureScope2 = textRangeLayoutMeasureScope;
                Constraints.Companion companion = Constraints.INSTANCE;
                List $this$fastMapIndexedNotNull$iv2 = $this$fastMapIndexedNotNull$iv;
                int width = rangeMeasureResult.getWidth();
                int $i$f$fastMapIndexedNotNull2 = $i$f$fastMapIndexedNotNull;
                int $i$f$fastMapIndexedNotNull3 = rangeMeasureResult.getWidth();
                List $this$fastForEachIndexed$iv$iv2 = $this$fastForEachIndexed$iv$iv;
                int height = rangeMeasureResult.getHeight();
                int $i$f$fastForEachIndexed2 = $i$f$fastForEachIndexed;
                int $i$f$fastForEachIndexed3 = rangeMeasureResult.getHeight();
                Placeable placeable = measurable.mo5339measureBRTryo0(companion.m6447fitPrioritizingWidthZbe2FdA(width, $i$f$fastMapIndexedNotNull3, height, $i$f$fastForEachIndexed3));
                target$iv.add(new Pair(placeable, rangeMeasureResult.getPlace()));
                index$iv$iv++;
                textRangeLayoutMeasureScope = textRangeLayoutMeasureScope2;
                $this$fastMapIndexedNotNull$iv = $this$fastMapIndexedNotNull$iv2;
                $i$f$fastMapIndexedNotNull = $i$f$fastMapIndexedNotNull2;
                $this$fastForEachIndexed$iv$iv = $this$fastForEachIndexed$iv$iv2;
                $i$f$fastForEachIndexed = $i$f$fastForEachIndexed2;
            }
            return target$iv;
        }
        return null;
    }

    /* renamed from: textModifier-cFh6CEA, reason: not valid java name */
    private static final Modifier m980textModifiercFh6CEA(Modifier $this$textModifier_u2dcFh6CEA, AnnotatedString text, TextStyle style, Function1<? super TextLayoutResult, Unit> function1, int overflow, boolean softWrap, int maxLines, int minLines, FontFamily.Resolver fontFamilyResolver, List<AnnotatedString.Range<Placeholder>> list, Function1<? super List<Rect>, Unit> function12, SelectionController selectionController, ColorProducer color, Function1<? super TextAnnotatedStringNode.TextSubstitutionValue, Unit> function13) {
        if (selectionController == null) {
            TextAnnotatedStringElement staticTextModifier = new TextAnnotatedStringElement(text, style, fontFamilyResolver, function1, overflow, softWrap, maxLines, minLines, list, function12, null, color, function13, null);
            return $this$textModifier_u2dcFh6CEA.then(Modifier.INSTANCE).then(staticTextModifier);
        }
        SelectableTextAnnotatedStringElement selectableTextModifier = new SelectableTextAnnotatedStringElement(text, style, fontFamilyResolver, function1, overflow, softWrap, maxLines, minLines, list, function12, selectionController, color, null);
        return $this$textModifier_u2dcFh6CEA.then(selectionController.getModifier()).then(selectableTextModifier);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: LayoutWithLinksAndInlineContent-vOo2fZY, reason: not valid java name */
    public static final void m978LayoutWithLinksAndInlineContentvOo2fZY(final Modifier modifier, final AnnotatedString annotatedString, final Function1<? super TextLayoutResult, Unit> function1, final boolean z, Map<String, InlineTextContent> map, final TextStyle textStyle, final int i, final boolean z2, final int i2, final int i3, final FontFamily.Resolver resolver, final SelectionController selectionController, final ColorProducer colorProducer, final Function1<? super TextAnnotatedStringNode.TextSubstitutionValue, Unit> function12, Composer composer, final int i4, final int i5, final int i6) {
        Map<String, InlineTextContent> map2;
        int i7;
        final TextLinkScope textLinkScope;
        Object obj;
        Function0<AnnotatedString> function0;
        Map<String, InlineTextContent> map3;
        final MutableState mutableState;
        Function1<List<? extends Rect>, Unit> function13;
        Object obj2;
        Object obj3;
        Object obj4;
        TextMeasurePolicy textMeasurePolicy;
        Function0<ComposeUiNode> function02;
        int i8;
        Object obj5;
        Object obj6;
        Object objMutableStateOf$default;
        Object obj7;
        Composer composerStartRestartGroup = composer.startRestartGroup(645129368);
        ComposerKt.sourceInformation(composerStartRestartGroup, "C(LayoutWithLinksAndInlineContent)P(6,13,8,2,3,12,9:c#ui.text.style.TextOverflow,11,4,5,1,10)578@22283L117,565@21843L1459:BasicText.kt#423gt5");
        int i9 = i4;
        int i10 = i5;
        if ((i6 & 1) != 0) {
            i9 |= 6;
        } else if ((i4 & 6) == 0) {
            i9 |= composerStartRestartGroup.changed(modifier) ? 4 : 2;
        }
        if ((i6 & 2) != 0) {
            i9 |= 48;
        } else if ((i4 & 48) == 0) {
            i9 |= composerStartRestartGroup.changed(annotatedString) ? 32 : 16;
        }
        if ((i6 & 4) != 0) {
            i9 |= 384;
        } else if ((i4 & 384) == 0) {
            i9 |= composerStartRestartGroup.changedInstance(function1) ? 256 : 128;
        }
        if ((i6 & 8) != 0) {
            i9 |= 3072;
        } else if ((i4 & 3072) == 0) {
            i9 |= composerStartRestartGroup.changed(z) ? 2048 : 1024;
        }
        int i11 = i6 & 16;
        if (i11 != 0) {
            i9 |= 24576;
            map2 = map;
        } else if ((i4 & 24576) == 0) {
            map2 = map;
            i9 |= composerStartRestartGroup.changedInstance(map2) ? 16384 : 8192;
        } else {
            map2 = map;
        }
        if ((i6 & 32) != 0) {
            i9 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i4 & ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE) == 0) {
            i9 |= composerStartRestartGroup.changed(textStyle) ? 131072 : 65536;
        }
        if ((i6 & 64) != 0) {
            i9 |= 1572864;
        } else if ((i4 & 1572864) == 0) {
            i9 |= composerStartRestartGroup.changed(i) ? 1048576 : 524288;
        }
        if ((i6 & 128) != 0) {
            i9 |= 12582912;
        } else if ((12582912 & i4) == 0) {
            i9 |= composerStartRestartGroup.changed(z2) ? 8388608 : 4194304;
        }
        if ((i6 & 256) != 0) {
            i9 |= 100663296;
        } else if ((100663296 & i4) == 0) {
            i9 |= composerStartRestartGroup.changed(i2) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if ((i6 & 512) != 0) {
            i9 |= 805306368;
        } else if ((805306368 & i4) == 0) {
            i9 |= composerStartRestartGroup.changed(i3) ? 536870912 : 268435456;
        }
        if ((i6 & 1024) != 0) {
            i10 |= 6;
        } else if ((i5 & 6) == 0) {
            i10 |= composerStartRestartGroup.changedInstance(resolver) ? 4 : 2;
        }
        if ((i6 & 2048) != 0) {
            i10 |= 48;
        } else if ((i5 & 48) == 0) {
            i10 |= composerStartRestartGroup.changedInstance(selectionController) ? 32 : 16;
        }
        if ((i6 & 4096) != 0) {
            i10 |= 384;
        } else if ((i5 & 384) == 0) {
            i10 |= composerStartRestartGroup.changedInstance(colorProducer) ? 256 : 128;
        }
        if ((i6 & 8192) != 0) {
            i10 |= 3072;
        } else if ((i5 & 3072) == 0) {
            i10 |= composerStartRestartGroup.changedInstance(function12) ? 2048 : 1024;
        }
        if ((i9 & 306783379) == 306783378 && (i10 & 1171) == 1170 && composerStartRestartGroup.getSkipping()) {
            composerStartRestartGroup.skipToGroupEnd();
            i8 = i9;
            i7 = i10;
            map3 = map2;
        } else {
            Map<String, InlineTextContent> mapEmptyMap = i11 != 0 ? MapsKt.emptyMap() : map2;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(645129368, i9, i10, "androidx.compose.foundation.text.LayoutWithLinksAndInlineContent (BasicText.kt:536)");
            }
            if (TextAnnotatedStringNodeKt.hasLinks(annotatedString)) {
                composerStartRestartGroup.startReplaceGroup(-619323167);
                ComposerKt.sourceInformation(composerStartRestartGroup, "539@20954L38");
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -297072527, "CC(remember):BasicText.kt#9igjgp");
                boolean z3 = (i9 & 112) == 32;
                i7 = i10;
                Object objRememberedValue = composerStartRestartGroup.rememberedValue();
                if (z3 || objRememberedValue == Composer.INSTANCE.getEmpty()) {
                    objRememberedValue = new TextLinkScope(annotatedString);
                    composerStartRestartGroup.updateRememberedValue(objRememberedValue);
                }
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                composerStartRestartGroup.endReplaceGroup();
                textLinkScope = (TextLinkScope) objRememberedValue;
            } else {
                i7 = i10;
                composerStartRestartGroup.startReplaceGroup(-619265198);
                composerStartRestartGroup.endReplaceGroup();
                textLinkScope = null;
            }
            if (TextAnnotatedStringNodeKt.hasLinks(annotatedString)) {
                composerStartRestartGroup.startReplaceGroup(-619074547);
                ComposerKt.sourceInformation(composerStartRestartGroup, "545@21203L90");
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -297064507, "CC(remember):BasicText.kt#9igjgp");
                boolean zChanged = ((i9 & 112) == 32) | composerStartRestartGroup.changed(textLinkScope);
                Object objRememberedValue2 = composerStartRestartGroup.rememberedValue();
                if (zChanged || objRememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    obj7 = (Function0) new Function0<AnnotatedString>() { // from class: androidx.compose.foundation.text.BasicTextKt$LayoutWithLinksAndInlineContent$styledText$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        public final AnnotatedString invoke() {
                            AnnotatedString annotatedStringApplyAnnotators$foundation_release;
                            TextLinkScope textLinkScope2 = textLinkScope;
                            return (textLinkScope2 == null || (annotatedStringApplyAnnotators$foundation_release = textLinkScope2.applyAnnotators$foundation_release()) == null) ? annotatedString : annotatedStringApplyAnnotators$foundation_release;
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(obj7);
                } else {
                    obj7 = objRememberedValue2;
                }
                function0 = (Function0) obj7;
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(-618966357);
                ComposerKt.sourceInformation(composerStartRestartGroup, "548@21307L8");
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -297061261, "CC(remember):BasicText.kt#9igjgp");
                boolean z4 = (i9 & 112) == 32;
                Object objRememberedValue3 = composerStartRestartGroup.rememberedValue();
                if (z4 || objRememberedValue3 == Composer.INSTANCE.getEmpty()) {
                    obj = (Function0) new Function0<AnnotatedString>() { // from class: androidx.compose.foundation.text.BasicTextKt$LayoutWithLinksAndInlineContent$styledText$2$1
                        {
                            super(0);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        public final AnnotatedString invoke() {
                            return annotatedString;
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(obj);
                } else {
                    obj = objRememberedValue3;
                }
                function0 = (Function0) obj;
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                composerStartRestartGroup.endReplaceGroup();
            }
            Pair<List<AnnotatedString.Range<Placeholder>>, List<AnnotatedString.Range<Function3<String, Composer, Integer, Unit>>>> pairResolveInlineContent = z ? AnnotatedStringResolveInlineContentKt.resolveInlineContent(annotatedString, mapEmptyMap) : new Pair<>(null, null);
            List<AnnotatedString.Range<Placeholder>> listComponent1 = pairResolveInlineContent.component1();
            List<AnnotatedString.Range<Function3<String, Composer, Integer, Unit>>> listComponent2 = pairResolveInlineContent.component2();
            if (z) {
                map3 = mapEmptyMap;
                composerStartRestartGroup.startReplaceGroup(-618671702);
                ComposerKt.sourceInformation(composerStartRestartGroup, "558@21610L61");
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -297051512, "CC(remember):BasicText.kt#9igjgp");
                Object objRememberedValue4 = composerStartRestartGroup.rememberedValue();
                if (objRememberedValue4 == Composer.INSTANCE.getEmpty()) {
                    objMutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                    composerStartRestartGroup.updateRememberedValue(objMutableStateOf$default);
                } else {
                    objMutableStateOf$default = objRememberedValue4;
                }
                mutableState = (MutableState) objMutableStateOf$default;
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                map3 = mapEmptyMap;
                composerStartRestartGroup.startReplaceGroup(-618591630);
                composerStartRestartGroup.endReplaceGroup();
                mutableState = null;
            }
            if (z) {
                composerStartRestartGroup.startReplaceGroup(-618506565);
                ComposerKt.sourceInformation(composerStartRestartGroup, "562@21777L44");
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -297046185, "CC(remember):BasicText.kt#9igjgp");
                boolean zChanged2 = composerStartRestartGroup.changed(mutableState);
                Object objRememberedValue5 = composerStartRestartGroup.rememberedValue();
                if (zChanged2 || objRememberedValue5 == Composer.INSTANCE.getEmpty()) {
                    obj6 = (Function1) new Function1<List<? extends Rect>, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$LayoutWithLinksAndInlineContent$onPlaceholderLayout$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(List<? extends Rect> list) {
                            invoke2((List<Rect>) list);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(List<Rect> list) {
                            MutableState<List<Rect>> mutableState2 = mutableState;
                            if (mutableState2 == null) {
                                return;
                            }
                            mutableState2.setValue(list);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(obj6);
                } else {
                    obj6 = objRememberedValue5;
                }
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                composerStartRestartGroup.endReplaceGroup();
                function13 = (Function1) obj6;
            } else {
                composerStartRestartGroup.startReplaceGroup(-618442830);
                composerStartRestartGroup.endReplaceGroup();
                function13 = null;
            }
            Modifier modifierM4164graphicsLayerAp8cVGQ$default = GraphicsLayerModifierKt.m4164graphicsLayerAp8cVGQ$default(modifier, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131071, null);
            AnnotatedString annotatedStringInvoke = function0.invoke();
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -297029920, "CC(remember):BasicText.kt#9igjgp");
            boolean zChangedInstance = composerStartRestartGroup.changedInstance(textLinkScope) | ((i9 & 896) == 256);
            Object objRememberedValue6 = composerStartRestartGroup.rememberedValue();
            if (zChangedInstance || objRememberedValue6 == Composer.INSTANCE.getEmpty()) {
                obj2 = (Function1) new Function1<TextLayoutResult, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$LayoutWithLinksAndInlineContent$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(TextLayoutResult textLayoutResult) {
                        invoke2(textLayoutResult);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(TextLayoutResult it) {
                        TextLinkScope textLinkScope2 = textLinkScope;
                        if (textLinkScope2 != null) {
                            textLinkScope2.setTextLayoutResult(it);
                        }
                        Function1<TextLayoutResult, Unit> function14 = function1;
                        if (function14 != null) {
                            function14.invoke(it);
                        }
                    }
                };
                composerStartRestartGroup.updateRememberedValue(obj2);
            } else {
                obj2 = objRememberedValue6;
            }
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            Modifier modifierM980textModifiercFh6CEA = m980textModifiercFh6CEA(modifierM4164graphicsLayerAp8cVGQ$default, annotatedStringInvoke, textStyle, (Function1) obj2, i, z2, i2, i3, resolver, listComponent1, function13, selectionController, colorProducer, function12);
            if (z) {
                composerStartRestartGroup.startReplaceGroup(-617202116);
                ComposerKt.sourceInformation(composerStartRestartGroup, "599@23147L55,600@23233L39");
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -297002334, "CC(remember):BasicText.kt#9igjgp");
                boolean zChangedInstance2 = composerStartRestartGroup.changedInstance(textLinkScope);
                Object objRememberedValue7 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance2 || objRememberedValue7 == Composer.INSTANCE.getEmpty()) {
                    obj3 = (Function0) new Function0<Boolean>() { // from class: androidx.compose.foundation.text.BasicTextKt$LayoutWithLinksAndInlineContent$4$1
                        {
                            super(0);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        public final Boolean invoke() {
                            TextLinkScope it = textLinkScope;
                            return Boolean.valueOf(it != null ? it.getShouldMeasureLinks().invoke().booleanValue() : false);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(obj3);
                } else {
                    obj3 = objRememberedValue7;
                }
                Function0 function03 = (Function0) obj3;
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -296999598, "CC(remember):BasicText.kt#9igjgp");
                boolean zChanged3 = composerStartRestartGroup.changed(mutableState);
                Object objRememberedValue8 = composerStartRestartGroup.rememberedValue();
                if (zChanged3 || objRememberedValue8 == Composer.INSTANCE.getEmpty()) {
                    obj4 = (Function0) new Function0<List<? extends Rect>>() { // from class: androidx.compose.foundation.text.BasicTextKt$LayoutWithLinksAndInlineContent$5$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final List<? extends Rect> invoke() {
                            MutableState<List<Rect>> mutableState2 = mutableState;
                            if (mutableState2 != null) {
                                return mutableState2.getValue();
                            }
                            return null;
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(obj4);
                } else {
                    obj4 = objRememberedValue8;
                }
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                TextMeasurePolicy textMeasurePolicy2 = new TextMeasurePolicy(function03, (Function0) obj4);
                composerStartRestartGroup.endReplaceGroup();
                textMeasurePolicy = textMeasurePolicy2;
            } else {
                composerStartRestartGroup.startReplaceGroup(-617362851);
                ComposerKt.sourceInformation(composerStartRestartGroup, "595@22992L55");
                ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -297007294, "CC(remember):BasicText.kt#9igjgp");
                boolean zChangedInstance3 = composerStartRestartGroup.changedInstance(textLinkScope);
                Object objRememberedValue9 = composerStartRestartGroup.rememberedValue();
                if (zChangedInstance3 || objRememberedValue9 == Composer.INSTANCE.getEmpty()) {
                    obj5 = (Function0) new Function0<Boolean>() { // from class: androidx.compose.foundation.text.BasicTextKt$LayoutWithLinksAndInlineContent$3$1
                        {
                            super(0);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        public final Boolean invoke() {
                            TextLinkScope it = textLinkScope;
                            return Boolean.valueOf(it != null ? it.getShouldMeasureLinks().invoke().booleanValue() : false);
                        }
                    };
                    composerStartRestartGroup.updateRememberedValue(obj5);
                } else {
                    obj5 = objRememberedValue9;
                }
                ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
                LinksTextMeasurePolicy linksTextMeasurePolicy = new LinksTextMeasurePolicy((Function0) obj5);
                composerStartRestartGroup.endReplaceGroup();
                textMeasurePolicy = linksTextMeasurePolicy;
            }
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -1323940314, "CC(Layout)P(!1,2)79@3208L23,82@3359L411:Layout.kt#80mrfh");
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composerStartRestartGroup, 0);
            CompositionLocalMap currentCompositionLocalMap = composerStartRestartGroup.getCurrentCompositionLocalMap();
            Modifier modifierMaterializeModifier = ComposedModifierKt.materializeModifier(composerStartRestartGroup, modifierM980textModifiercFh6CEA);
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            int i12 = ((0 << 6) & 896) | 6;
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -692256719, "CC(ReusableComposeNode)P(1,2)376@14062L9:Composables.kt#9igjgp");
            if (!(composerStartRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composerStartRestartGroup.startReusableNode();
            if (composerStartRestartGroup.getInserting()) {
                function02 = constructor;
                composerStartRestartGroup.createNode(function02);
            } else {
                function02 = constructor;
                composerStartRestartGroup.useNode();
            }
            Composer composerM3496constructorimpl = Updater.m3496constructorimpl(composerStartRestartGroup);
            Updater.m3503setimpl(composerM3496constructorimpl, textMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m3503setimpl(composerM3496constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (composerM3496constructorimpl.getInserting() || !Intrinsics.areEqual(composerM3496constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                composerM3496constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                composerM3496constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.m3503setimpl(composerM3496constructorimpl, modifierMaterializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
            int i13 = (i12 >> 6) & 14;
            ComposerKt.sourceInformationMarkerStart(composerStartRestartGroup, -515487512, "C:BasicText.kt#423gt5");
            if (textLinkScope == null) {
                composerStartRestartGroup.startReplaceGroup(-515480539);
                composerStartRestartGroup.endReplaceGroup();
            } else {
                composerStartRestartGroup.startReplaceGroup(537560924);
                ComposerKt.sourceInformation(composerStartRestartGroup, "567@21894L18");
                textLinkScope.LinksComposables(composerStartRestartGroup, 0);
                composerStartRestartGroup.endReplaceGroup();
                Unit unit = Unit.INSTANCE;
            }
            if (listComponent2 == null) {
                composerStartRestartGroup.startReplaceGroup(-515428893);
                composerStartRestartGroup.endReplaceGroup();
                i8 = i9;
            } else {
                composerStartRestartGroup.startReplaceGroup(-515428892);
                ComposerKt.sourceInformation(composerStartRestartGroup, "*569@21966L48");
                i8 = i9;
                AnnotatedStringResolveInlineContentKt.InlineChildren(annotatedString, listComponent2, composerStartRestartGroup, (i9 >> 3) & 14);
                Unit unit2 = Unit.INSTANCE;
                composerStartRestartGroup.endReplaceGroup();
                Unit unit3 = Unit.INSTANCE;
            }
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            composerStartRestartGroup.endNode();
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(composerStartRestartGroup);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        }
        ScopeUpdateScope scopeUpdateScopeEndRestartGroup = composerStartRestartGroup.endRestartGroup();
        if (scopeUpdateScopeEndRestartGroup != null) {
            final Map<String, InlineTextContent> map4 = map3;
            scopeUpdateScopeEndRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.BasicTextKt$LayoutWithLinksAndInlineContent$6
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i14) {
                    BasicTextKt.m978LayoutWithLinksAndInlineContentvOo2fZY(modifier, annotatedString, function1, z, map4, textStyle, i, z2, i2, i3, resolver, selectionController, colorProducer, function12, composer2, RecomposeScopeImplKt.updateChangedFlags(i4 | 1), RecomposeScopeImplKt.updateChangedFlags(i5), i6);
                }
            });
        }
    }
}
