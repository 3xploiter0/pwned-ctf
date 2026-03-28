package androidx.compose.ui.text.style;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: LineBreak.android.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087@\u0018\u0000 \u001e2\u00020\u0001:\u0004\u001e\u001f !B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0002\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\b\u0010\fJ.\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\u0019\u0010\fJ\u000f\u0010\u001a\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u000e\u0010\n\u001a\u00020\u000bX\u0080\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0002\u001a\u00020\u00038Fø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\r\u0010\fR\u0017\u0010\u0004\u001a\u00020\u00058Fø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u000e\u0010\fR\u0017\u0010\u0006\u001a\u00020\u00078Fø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u000f\u0010\f\u0088\u0001\n\u0092\u0001\u00020\u000b\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\""}, d2 = {"Landroidx/compose/ui/text/style/LineBreak;", "", "strategy", "Landroidx/compose/ui/text/style/LineBreak$Strategy;", "strictness", "Landroidx/compose/ui/text/style/LineBreak$Strictness;", "wordBreak", "Landroidx/compose/ui/text/style/LineBreak$WordBreak;", "constructor-impl", "(III)I", "mask", "", "(I)I", "getStrategy-fcGXIks", "getStrictness-usljTpc", "getWordBreak-jp8hJ3c", "copy", "copy-gijOMQM", "(IIII)I", "equals", "", "other", "equals-impl", "(ILjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "Companion", "Strategy", "Strictness", "WordBreak", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class LineBreak {
    private final int mask;

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int Simple = m6266constructorimpl(LineBreak_androidKt.packBytes(Strategy.INSTANCE.m6295getSimplefcGXIks(), Strictness.INSTANCE.m6306getNormalusljTpc(), WordBreak.INSTANCE.m6316getDefaultjp8hJ3c()));
    private static final int Heading = m6266constructorimpl(LineBreak_androidKt.packBytes(Strategy.INSTANCE.m6293getBalancedfcGXIks(), Strictness.INSTANCE.m6305getLooseusljTpc(), WordBreak.INSTANCE.m6317getPhrasejp8hJ3c()));
    private static final int Paragraph = m6266constructorimpl(LineBreak_androidKt.packBytes(Strategy.INSTANCE.m6294getHighQualityfcGXIks(), Strictness.INSTANCE.m6307getStrictusljTpc(), WordBreak.INSTANCE.m6316getDefaultjp8hJ3c()));
    private static final int Unspecified = m6266constructorimpl(0);

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ LineBreak m6265boximpl(int i) {
        return new LineBreak(i);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    private static int m6266constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m6270equalsimpl(int i, Object obj) {
        return (obj instanceof LineBreak) && i == ((LineBreak) obj).getMask();
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6271equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m6275hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    public boolean equals(Object obj) {
        return m6270equalsimpl(this.mask, obj);
    }

    public int hashCode() {
        return m6275hashCodeimpl(this.mask);
    }

    /* renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int getMask() {
        return this.mask;
    }

    private /* synthetic */ LineBreak(int mask) {
        this.mask = mask;
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m6267constructorimpl(int strategy, int strictness, int wordBreak) {
        return m6266constructorimpl(LineBreak_androidKt.packBytes(strategy, strictness, wordBreak));
    }

    /* renamed from: getStrategy-fcGXIks, reason: not valid java name */
    public static final int m6272getStrategyfcGXIks(int arg0) {
        return Strategy.m6287constructorimpl(LineBreak_androidKt.unpackByte1(arg0));
    }

    /* renamed from: getStrictness-usljTpc, reason: not valid java name */
    public static final int m6273getStrictnessusljTpc(int arg0) {
        return Strictness.m6298constructorimpl(LineBreak_androidKt.unpackByte2(arg0));
    }

    /* renamed from: getWordBreak-jp8hJ3c, reason: not valid java name */
    public static final int m6274getWordBreakjp8hJ3c(int arg0) {
        return WordBreak.m6310constructorimpl(LineBreak_androidKt.unpackByte3(arg0));
    }

    /* renamed from: copy-gijOMQM$default, reason: not valid java name */
    public static /* synthetic */ int m6269copygijOMQM$default(int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i2 = m6272getStrategyfcGXIks(i);
        }
        if ((i5 & 2) != 0) {
            i3 = m6273getStrictnessusljTpc(i);
        }
        if ((i5 & 4) != 0) {
            i4 = m6274getWordBreakjp8hJ3c(i);
        }
        return m6268copygijOMQM(i, i2, i3, i4);
    }

    /* renamed from: copy-gijOMQM, reason: not valid java name */
    public static final int m6268copygijOMQM(int arg0, int strategy, int strictness, int wordBreak) {
        return m6267constructorimpl(strategy, strictness, wordBreak);
    }

    public String toString() {
        return m6276toStringimpl(this.mask);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m6276toStringimpl(int arg0) {
        return "LineBreak(strategy=" + ((Object) Strategy.m6291toStringimpl(m6272getStrategyfcGXIks(arg0))) + ", strictness=" + ((Object) Strictness.m6302toStringimpl(m6273getStrictnessusljTpc(arg0))) + ", wordBreak=" + ((Object) WordBreak.m6314toStringimpl(m6274getWordBreakjp8hJ3c(arg0))) + ')';
    }

    /* compiled from: LineBreak.android.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R$\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\n\u0010\u0002\u001a\u0004\b\u000b\u0010\u0007R$\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\r\u0010\u0002\u001a\u0004\b\u000e\u0010\u0007R$\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0010\u0010\u0002\u001a\u0004\b\u0011\u0010\u0007\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/text/style/LineBreak$Companion;", "", "()V", "Heading", "Landroidx/compose/ui/text/style/LineBreak;", "getHeading-rAG3T2k$annotations", "getHeading-rAG3T2k", "()I", "I", "Paragraph", "getParagraph-rAG3T2k$annotations", "getParagraph-rAG3T2k", "Simple", "getSimple-rAG3T2k$annotations", "getSimple-rAG3T2k", "Unspecified", "getUnspecified-rAG3T2k$annotations", "getUnspecified-rAG3T2k", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getHeading-rAG3T2k$annotations, reason: not valid java name */
        public static /* synthetic */ void m6278getHeadingrAG3T2k$annotations() {
        }

        /* renamed from: getParagraph-rAG3T2k$annotations, reason: not valid java name */
        public static /* synthetic */ void m6279getParagraphrAG3T2k$annotations() {
        }

        /* renamed from: getSimple-rAG3T2k$annotations, reason: not valid java name */
        public static /* synthetic */ void m6280getSimplerAG3T2k$annotations() {
        }

        /* renamed from: getUnspecified-rAG3T2k$annotations, reason: not valid java name */
        public static /* synthetic */ void m6281getUnspecifiedrAG3T2k$annotations() {
        }

        private Companion() {
        }

        /* renamed from: getSimple-rAG3T2k, reason: not valid java name */
        public final int m6284getSimplerAG3T2k() {
            return LineBreak.Simple;
        }

        /* renamed from: getHeading-rAG3T2k, reason: not valid java name */
        public final int m6282getHeadingrAG3T2k() {
            return LineBreak.Heading;
        }

        /* renamed from: getParagraph-rAG3T2k, reason: not valid java name */
        public final int m6283getParagraphrAG3T2k() {
            return LineBreak.Paragraph;
        }

        /* renamed from: getUnspecified-rAG3T2k, reason: not valid java name */
        public final int m6285getUnspecifiedrAG3T2k() {
            return LineBreak.Unspecified;
        }
    }

    /* compiled from: LineBreak.android.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/text/style/LineBreak$Strategy;", "", "value", "", "constructor-impl", "(I)I", "equals", "", "other", "equals-impl", "(ILjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "Companion", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @JvmInline
    public static final class Strategy {
        private final int value;

        /* renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final int Simple = m6287constructorimpl(1);
        private static final int HighQuality = m6287constructorimpl(2);
        private static final int Balanced = m6287constructorimpl(3);
        private static final int Unspecified = m6287constructorimpl(0);

        /* renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ Strategy m6286boximpl(int i) {
            return new Strategy(i);
        }

        /* renamed from: constructor-impl, reason: not valid java name */
        public static int m6287constructorimpl(int i) {
            return i;
        }

        /* renamed from: equals-impl, reason: not valid java name */
        public static boolean m6288equalsimpl(int i, Object obj) {
            return (obj instanceof Strategy) && i == ((Strategy) obj).getValue();
        }

        /* renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m6289equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* renamed from: hashCode-impl, reason: not valid java name */
        public static int m6290hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        public boolean equals(Object obj) {
            return m6288equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m6290hashCodeimpl(this.value);
        }

        /* renamed from: unbox-impl, reason: not valid java name and from getter */
        public final /* synthetic */ int getValue() {
            return this.value;
        }

        /* compiled from: LineBreak.android.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0019\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u0019\u0010\n\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006R\u0019\u0010\f\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\r\u0010\u0006\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/text/style/LineBreak$Strategy$Companion;", "", "()V", "Balanced", "Landroidx/compose/ui/text/style/LineBreak$Strategy;", "getBalanced-fcGXIks", "()I", "I", "HighQuality", "getHighQuality-fcGXIks", "Simple", "getSimple-fcGXIks", "Unspecified", "getUnspecified-fcGXIks", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* renamed from: getSimple-fcGXIks, reason: not valid java name */
            public final int m6295getSimplefcGXIks() {
                return Strategy.Simple;
            }

            /* renamed from: getHighQuality-fcGXIks, reason: not valid java name */
            public final int m6294getHighQualityfcGXIks() {
                return Strategy.HighQuality;
            }

            /* renamed from: getBalanced-fcGXIks, reason: not valid java name */
            public final int m6293getBalancedfcGXIks() {
                return Strategy.Balanced;
            }

            /* renamed from: getUnspecified-fcGXIks, reason: not valid java name */
            public final int m6296getUnspecifiedfcGXIks() {
                return Strategy.Unspecified;
            }
        }

        private /* synthetic */ Strategy(int value) {
            this.value = value;
        }

        /* renamed from: toString-impl, reason: not valid java name */
        public static String m6291toStringimpl(int arg0) {
            return m6289equalsimpl0(arg0, Simple) ? "Strategy.Simple" : m6289equalsimpl0(arg0, HighQuality) ? "Strategy.HighQuality" : m6289equalsimpl0(arg0, Balanced) ? "Strategy.Balanced" : m6289equalsimpl0(arg0, Unspecified) ? "Strategy.Unspecified" : "Invalid";
        }

        public String toString() {
            return m6291toStringimpl(this.value);
        }
    }

    /* compiled from: LineBreak.android.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/text/style/LineBreak$Strictness;", "", "value", "", "constructor-impl", "(I)I", "equals", "", "other", "equals-impl", "(ILjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "Companion", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @JvmInline
    public static final class Strictness {

        /* renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final int Default = m6298constructorimpl(1);
        private static final int Loose = m6298constructorimpl(2);
        private static final int Normal = m6298constructorimpl(3);
        private static final int Strict = m6298constructorimpl(4);
        private static final int Unspecified = m6298constructorimpl(0);
        private final int value;

        /* renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ Strictness m6297boximpl(int i) {
            return new Strictness(i);
        }

        /* renamed from: constructor-impl, reason: not valid java name */
        public static int m6298constructorimpl(int i) {
            return i;
        }

        /* renamed from: equals-impl, reason: not valid java name */
        public static boolean m6299equalsimpl(int i, Object obj) {
            return (obj instanceof Strictness) && i == ((Strictness) obj).getValue();
        }

        /* renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m6300equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* renamed from: hashCode-impl, reason: not valid java name */
        public static int m6301hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        public boolean equals(Object obj) {
            return m6299equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m6301hashCodeimpl(this.value);
        }

        /* renamed from: unbox-impl, reason: not valid java name and from getter */
        public final /* synthetic */ int getValue() {
            return this.value;
        }

        /* compiled from: LineBreak.android.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0019\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u0019\u0010\n\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006R\u0019\u0010\f\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\r\u0010\u0006R\u0019\u0010\u000e\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000f\u0010\u0006\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0010"}, d2 = {"Landroidx/compose/ui/text/style/LineBreak$Strictness$Companion;", "", "()V", "Default", "Landroidx/compose/ui/text/style/LineBreak$Strictness;", "getDefault-usljTpc", "()I", "I", "Loose", "getLoose-usljTpc", "Normal", "getNormal-usljTpc", "Strict", "getStrict-usljTpc", "Unspecified", "getUnspecified-usljTpc", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* renamed from: getDefault-usljTpc, reason: not valid java name */
            public final int m6304getDefaultusljTpc() {
                return Strictness.Default;
            }

            /* renamed from: getLoose-usljTpc, reason: not valid java name */
            public final int m6305getLooseusljTpc() {
                return Strictness.Loose;
            }

            /* renamed from: getNormal-usljTpc, reason: not valid java name */
            public final int m6306getNormalusljTpc() {
                return Strictness.Normal;
            }

            /* renamed from: getStrict-usljTpc, reason: not valid java name */
            public final int m6307getStrictusljTpc() {
                return Strictness.Strict;
            }

            /* renamed from: getUnspecified-usljTpc, reason: not valid java name */
            public final int m6308getUnspecifiedusljTpc() {
                return Strictness.Unspecified;
            }
        }

        private /* synthetic */ Strictness(int value) {
            this.value = value;
        }

        /* renamed from: toString-impl, reason: not valid java name */
        public static String m6302toStringimpl(int arg0) {
            return m6300equalsimpl0(arg0, Default) ? "Strictness.None" : m6300equalsimpl0(arg0, Loose) ? "Strictness.Loose" : m6300equalsimpl0(arg0, Normal) ? "Strictness.Normal" : m6300equalsimpl0(arg0, Strict) ? "Strictness.Strict" : m6300equalsimpl0(arg0, Unspecified) ? "Strictness.Unspecified" : "Invalid";
        }

        public String toString() {
            return m6302toStringimpl(this.value);
        }
    }

    /* compiled from: LineBreak.android.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0011\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/text/style/LineBreak$WordBreak;", "", "value", "", "constructor-impl", "(I)I", "equals", "", "other", "equals-impl", "(ILjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "Companion", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @JvmInline
    public static final class WordBreak {

        /* renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final int Default = m6310constructorimpl(1);
        private static final int Phrase = m6310constructorimpl(2);
        private static final int Unspecified = m6310constructorimpl(0);
        private final int value;

        /* renamed from: box-impl, reason: not valid java name */
        public static final /* synthetic */ WordBreak m6309boximpl(int i) {
            return new WordBreak(i);
        }

        /* renamed from: constructor-impl, reason: not valid java name */
        public static int m6310constructorimpl(int i) {
            return i;
        }

        /* renamed from: equals-impl, reason: not valid java name */
        public static boolean m6311equalsimpl(int i, Object obj) {
            return (obj instanceof WordBreak) && i == ((WordBreak) obj).getValue();
        }

        /* renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m6312equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* renamed from: hashCode-impl, reason: not valid java name */
        public static int m6313hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        public boolean equals(Object obj) {
            return m6311equalsimpl(this.value, obj);
        }

        public int hashCode() {
            return m6313hashCodeimpl(this.value);
        }

        /* renamed from: unbox-impl, reason: not valid java name and from getter */
        public final /* synthetic */ int getValue() {
            return this.value;
        }

        /* compiled from: LineBreak.android.kt */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0019\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u0019\u0010\n\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\f"}, d2 = {"Landroidx/compose/ui/text/style/LineBreak$WordBreak$Companion;", "", "()V", "Default", "Landroidx/compose/ui/text/style/LineBreak$WordBreak;", "getDefault-jp8hJ3c", "()I", "I", "Phrase", "getPhrase-jp8hJ3c", "Unspecified", "getUnspecified-jp8hJ3c", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* renamed from: getDefault-jp8hJ3c, reason: not valid java name */
            public final int m6316getDefaultjp8hJ3c() {
                return WordBreak.Default;
            }

            /* renamed from: getPhrase-jp8hJ3c, reason: not valid java name */
            public final int m6317getPhrasejp8hJ3c() {
                return WordBreak.Phrase;
            }

            /* renamed from: getUnspecified-jp8hJ3c, reason: not valid java name */
            public final int m6318getUnspecifiedjp8hJ3c() {
                return WordBreak.Unspecified;
            }
        }

        private /* synthetic */ WordBreak(int value) {
            this.value = value;
        }

        /* renamed from: toString-impl, reason: not valid java name */
        public static String m6314toStringimpl(int arg0) {
            return m6312equalsimpl0(arg0, Default) ? "WordBreak.None" : m6312equalsimpl0(arg0, Phrase) ? "WordBreak.Phrase" : m6312equalsimpl0(arg0, Unspecified) ? "WordBreak.Unspecified" : "Invalid";
        }

        public String toString() {
            return m6314toStringimpl(this.value);
        }
    }
}
