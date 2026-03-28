package androidx.compose.ui.text;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.android.style.IndentationFixSpan;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;

/* compiled from: AndroidParagraph.android.kt */
@Metadata(d1 = {"\u0000T\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\u0002\u001a\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002ø\u0001\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u001a\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\rH\u0002ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\n\u001a\u001a\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0012\u0010\n\u001a\u001a\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015H\u0002ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\n\u001a\u001a\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0019H\u0002ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\n\u001a\f\u0010\u001b\u001a\u00020\u001c*\u00020\u001cH\u0002\u001a\u0014\u0010\u001d\u001a\u00020\u0006*\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0006H\u0002\u001a\u0016\u0010 \u001a\u00020\u0006*\u00020!H\u0002ø\u0001\u0000¢\u0006\u0004\b\"\u0010\n\u0082\u0002\u0007\n\u0005\b¡\u001e0\u0001¨\u0006#"}, d2 = {"shouldAttachIndentationFixSpan", "", "textStyle", "Landroidx/compose/ui/text/TextStyle;", "ellipsis", "toLayoutAlign", "", "align", "Landroidx/compose/ui/text/style/TextAlign;", "toLayoutAlign-aXe7zB0", "(I)I", "toLayoutBreakStrategy", "breakStrategy", "Landroidx/compose/ui/text/style/LineBreak$Strategy;", "toLayoutBreakStrategy-xImikfE", "toLayoutHyphenationFrequency", "hyphens", "Landroidx/compose/ui/text/style/Hyphens;", "toLayoutHyphenationFrequency--3fSNIE", "toLayoutLineBreakStyle", "lineBreakStrictness", "Landroidx/compose/ui/text/style/LineBreak$Strictness;", "toLayoutLineBreakStyle-hpcqdu8", "toLayoutLineBreakWordStyle", "lineBreakWordStyle", "Landroidx/compose/ui/text/style/LineBreak$WordBreak;", "toLayoutLineBreakWordStyle-wPN0Rpw", "attachIndentationFixSpan", "", "numberOfLinesThatFitMaxHeight", "Landroidx/compose/ui/text/android/TextLayout;", "maxHeight", "toLayoutTextGranularity", "Landroidx/compose/ui/text/TextGranularity;", "toLayoutTextGranularity-duNsdkg", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidParagraph_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutAlign-aXe7zB0, reason: not valid java name */
    public static final int m5793toLayoutAlignaXe7zB0(int align) {
        if (TextAlign.m6348equalsimpl0(align, TextAlign.INSTANCE.m6355getLefte0LSkKk())) {
            return 3;
        }
        if (TextAlign.m6348equalsimpl0(align, TextAlign.INSTANCE.m6356getRighte0LSkKk())) {
            return 4;
        }
        if (TextAlign.m6348equalsimpl0(align, TextAlign.INSTANCE.m6352getCentere0LSkKk())) {
            return 2;
        }
        return (!TextAlign.m6348equalsimpl0(align, TextAlign.INSTANCE.m6357getStarte0LSkKk()) && TextAlign.m6348equalsimpl0(align, TextAlign.INSTANCE.m6353getEnde0LSkKk())) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutHyphenationFrequency--3fSNIE, reason: not valid java name */
    public static final int m5795toLayoutHyphenationFrequency3fSNIE(int hyphens) {
        if (!Hyphens.m6258equalsimpl0(hyphens, Hyphens.INSTANCE.m6262getAutovmbZdU8())) {
            return Hyphens.m6258equalsimpl0(hyphens, Hyphens.INSTANCE.m6263getNonevmbZdU8()) ? 0 : 0;
        }
        if (Build.VERSION.SDK_INT <= 32) {
            return 2;
        }
        return 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutBreakStrategy-xImikfE, reason: not valid java name */
    public static final int m5794toLayoutBreakStrategyxImikfE(int breakStrategy) {
        if (LineBreak.Strategy.m6289equalsimpl0(breakStrategy, LineBreak.Strategy.INSTANCE.m6295getSimplefcGXIks())) {
            return 0;
        }
        if (LineBreak.Strategy.m6289equalsimpl0(breakStrategy, LineBreak.Strategy.INSTANCE.m6294getHighQualityfcGXIks())) {
            return 1;
        }
        return LineBreak.Strategy.m6289equalsimpl0(breakStrategy, LineBreak.Strategy.INSTANCE.m6293getBalancedfcGXIks()) ? 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutLineBreakStyle-hpcqdu8, reason: not valid java name */
    public static final int m5796toLayoutLineBreakStylehpcqdu8(int lineBreakStrictness) {
        if (LineBreak.Strictness.m6300equalsimpl0(lineBreakStrictness, LineBreak.Strictness.INSTANCE.m6304getDefaultusljTpc())) {
            return 0;
        }
        if (LineBreak.Strictness.m6300equalsimpl0(lineBreakStrictness, LineBreak.Strictness.INSTANCE.m6305getLooseusljTpc())) {
            return 1;
        }
        if (LineBreak.Strictness.m6300equalsimpl0(lineBreakStrictness, LineBreak.Strictness.INSTANCE.m6306getNormalusljTpc())) {
            return 2;
        }
        return LineBreak.Strictness.m6300equalsimpl0(lineBreakStrictness, LineBreak.Strictness.INSTANCE.m6307getStrictusljTpc()) ? 3 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutLineBreakWordStyle-wPN0Rpw, reason: not valid java name */
    public static final int m5797toLayoutLineBreakWordStylewPN0Rpw(int lineBreakWordStyle) {
        return (!LineBreak.WordBreak.m6312equalsimpl0(lineBreakWordStyle, LineBreak.WordBreak.INSTANCE.m6316getDefaultjp8hJ3c()) && LineBreak.WordBreak.m6312equalsimpl0(lineBreakWordStyle, LineBreak.WordBreak.INSTANCE.m6317getPhrasejp8hJ3c())) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int numberOfLinesThatFitMaxHeight(TextLayout $this$numberOfLinesThatFitMaxHeight, int maxHeight) {
        int lineCount = $this$numberOfLinesThatFitMaxHeight.getLineCount();
        for (int lineIndex = 0; lineIndex < lineCount; lineIndex++) {
            if ($this$numberOfLinesThatFitMaxHeight.getLineBottom(lineIndex) > maxHeight) {
                return lineIndex;
            }
        }
        int lineIndex2 = $this$numberOfLinesThatFitMaxHeight.getLineCount();
        return lineIndex2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean shouldAttachIndentationFixSpan(TextStyle textStyle, boolean ellipsis) {
        return (!ellipsis || TextUnit.m6675equalsimpl0(textStyle.m5984getLetterSpacingXSAIIZE(), TextUnitKt.getSp(0)) || TextUnit.m6675equalsimpl0(textStyle.m5984getLetterSpacingXSAIIZE(), TextUnit.INSTANCE.m6689getUnspecifiedXSAIIZE()) || TextAlign.m6348equalsimpl0(textStyle.m5989getTextAligne0LSkKk(), TextAlign.INSTANCE.m6358getUnspecifiede0LSkKk()) || TextAlign.m6348equalsimpl0(textStyle.m5989getTextAligne0LSkKk(), TextAlign.INSTANCE.m6357getStarte0LSkKk()) || TextAlign.m6348equalsimpl0(textStyle.m5989getTextAligne0LSkKk(), TextAlign.INSTANCE.m6354getJustifye0LSkKk())) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence attachIndentationFixSpan(CharSequence $this$attachIndentationFixSpan) {
        if ($this$attachIndentationFixSpan.length() == 0) {
            return $this$attachIndentationFixSpan;
        }
        SpannableString spannable = $this$attachIndentationFixSpan instanceof Spannable ? (Spannable) $this$attachIndentationFixSpan : new SpannableString($this$attachIndentationFixSpan);
        SpannableExtensions_androidKt.setSpan(spannable, new IndentationFixSpan(), spannable.length() - 1, spannable.length() - 1);
        return spannable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutTextGranularity-duNsdkg, reason: not valid java name */
    public static final int m5798toLayoutTextGranularityduNsdkg(int $this$toLayoutTextGranularity_u2dduNsdkg) {
        return (!TextGranularity.m5908equalsimpl0($this$toLayoutTextGranularity_u2dduNsdkg, TextGranularity.INSTANCE.m5912getCharacterDRrd7Zo()) && TextGranularity.m5908equalsimpl0($this$toLayoutTextGranularity_u2dduNsdkg, TextGranularity.INSTANCE.m5913getWordDRrd7Zo())) ? 1 : 0;
    }
}
