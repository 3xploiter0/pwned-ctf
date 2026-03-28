.class public Landroidx/navigation/NavController;
.super Ljava/lang/Object;
.source "NavController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavController$Companion;,
        Landroidx/navigation/NavController$NavControllerNavigatorState;,
        Landroidx/navigation/NavController$OnDestinationChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavController.kt\nandroidx/navigation/NavController\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 7 Uri.kt\nandroidx/core/net/UriKt\n+ 8 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,2860:1\n534#1,10:3011\n179#2,2:2861\n1313#2,2:2871\n1313#2,2:2873\n179#2,2:3009\n1#3:2863\n146#4:2864\n533#5,6:2865\n1855#5,2:2875\n1855#5,2:2877\n1855#5,2:2879\n1855#5,2:2881\n1864#5,3:2883\n1774#5,4:2886\n1855#5:2890\n766#5:2891\n857#5,2:2892\n1856#5:2894\n766#5:2895\n857#5,2:2896\n766#5:2898\n857#5,2:2899\n1855#5,2:2901\n1855#5:2903\n1789#5,3:2904\n1856#5:2907\n819#5:2915\n847#5,2:2916\n1855#5:2918\n1856#5:2926\n1238#5,4:2929\n1855#5,2:2933\n1855#5,2:2935\n378#5,7:2937\n1549#5:2944\n1620#5,3:2945\n1855#5,2:2948\n1855#5,2:2950\n819#5:2952\n847#5,2:2953\n1855#5,2:2955\n1855#5,2:2957\n533#5,6:2959\n533#5,6:2965\n533#5,6:2971\n1855#5,2:2977\n1855#5,2:2979\n1864#5,3:2983\n1855#5,2:2989\n533#5,6:2991\n533#5,6:2997\n533#5,6:3003\n372#6,7:2908\n372#6,7:2919\n453#6:2927\n403#6:2928\n29#7:2981\n29#7:2982\n13404#8,3:2986\n*S KotlinDebug\n*F\n+ 1 NavController.kt\nandroidx/navigation/NavController\n*L\n-1#1:3011,10\n86#1:2861,2\n721#1:2871,2\n742#1:2873,2\n2743#1:3009,2\n169#1:2864\n659#1:2865,6\n899#1:2875,2\n902#1:2877,2\n908#1:2879,2\n910#1:2881,2\n989#1:2883,3\n1051#1:2886,4\n1195#1:2890\n1197#1:2891\n1197#1:2892,2\n1195#1:2894\n1205#1:2895\n1205#1:2896,2\n1208#1:2898\n1208#1:2899,2\n1274#1:2901,2\n1288#1:2903\n1292#1:2904,3\n1288#1:2907\n1351#1:2915\n1351#1:2916,2\n1352#1:2918\n1352#1:2926\n1665#1:2929,4\n1945#1:2933,2\n2008#1:2935,2\n2018#1:2937,7\n2027#1:2944\n2027#1:2945,3\n2044#1:2948,2\n2054#1:2950,2\n2121#1:2952\n2121#1:2953,2\n2125#1:2955,2\n2169#1:2957,2\n2211#1:2959,6\n2241#1:2965,6\n2270#1:2971,6\n2284#1:2977,2\n2300#1:2979,2\n2496#1:2983,3\n2537#1:2989,2\n2637#1:2991,6\n2658#1:2997,6\n2684#1:3003,6\n1338#1:2908,7\n1354#1:2919,7\n1665#1:2927\n1665#1:2928\n2376#1:2981\n2423#1:2982\n2534#1:2986,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c6\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0016\u0018\u0000 \u00d5\u00012\u00020\u0001:\u0006\u00d5\u0001\u00d6\u0001\u00d7\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J2\u0010q\u001a\u00020\u00172\u0006\u0010r\u001a\u0002052\u0008\u0010s\u001a\u0004\u0018\u00010_2\u0006\u0010\u0016\u001a\u00020\u00082\u000e\u0008\u0002\u0010t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J\u0010\u0010u\u001a\u00020\u00172\u0006\u0010v\u001a\u00020fH\u0016J\u0015\u0010w\u001a\u000209\"\n\u0008\u0000\u0010x\u0018\u0001*\u00020\u0001H\u0087\u0008J\u001f\u0010w\u001a\u000209\"\u0008\u0008\u0000\u0010x*\u00020\u00012\u0006\u0010y\u001a\u0002HxH\u0007\u00a2\u0006\u0002\u0010zJ\u0012\u0010w\u001a\u0002092\u0008\u0008\u0001\u0010{\u001a\u00020\u001eH\u0007J\u0010\u0010w\u001a\u0002092\u0006\u0010y\u001a\u00020\u001fH\u0007J\u0012\u0010|\u001a\u0002092\u0008\u0008\u0001\u0010{\u001a\u00020\u001eH\u0003J\u0010\u0010|\u001a\u0002092\u0006\u0010y\u001a\u00020\u001fH\u0003J\u0008\u0010}\u001a\u00020~H\u0016J\u0008\u0010\u007f\u001a\u000209H\u0002J\u0012\u0010\u0080\u0001\u001a\u00020\u00172\u0007\u0010\u0081\u0001\u001a\u000209H\u0017J7\u0010\u0082\u0001\u001a\u0002092\u0011\u0010\u0083\u0001\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\\0\u00072\u0007\u0010\u0084\u0001\u001a\u0002052\u0007\u0010\u0085\u0001\u001a\u0002092\u0007\u0010\u0086\u0001\u001a\u000209H\u0002J;\u0010\u0087\u0001\u001a\u0002092\r\u0010\u0088\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010_2\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u00012\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008d\u0001H\u0002J\u0015\u0010\u008e\u0001\u001a\u0004\u0018\u0001052\u0008\u0008\u0001\u0010{\u001a\u00020\u001eH\u0007J\u0013\u0010\u008e\u0001\u001a\u0004\u0018\u0001052\u0006\u0010y\u001a\u00020\u001fH\u0007J\u0015\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u001f2\u0008\u0010\u0090\u0001\u001a\u00030\u0091\u0001H\u0002J!\u0010\u0092\u0001\u001a\u00020\u001f\"\u0008\u0008\u0000\u0010x*\u00020\u00012\u0006\u0010y\u001a\u0002HxH\u0002\u00a2\u0006\u0003\u0010\u0093\u0001J\u0016\u0010\u0094\u0001\u001a\u00020\u0008\"\n\u0008\u0000\u0010x\u0018\u0001*\u00020\u0001H\u0086\u0008J\u001f\u0010\u0094\u0001\u001a\u00020\u0008\"\u0008\u0008\u0000\u0010x*\u00020\u00012\u0006\u0010y\u001a\u0002Hx\u00a2\u0006\u0003\u0010\u0095\u0001J\u0013\u0010\u0094\u0001\u001a\u00020\u00082\u0008\u0008\u0001\u0010{\u001a\u00020\u001eH\u0016J\u000f\u0010\u0094\u0001\u001a\u00020\u00082\u0006\u0010y\u001a\u00020\u001fJ\u0015\u0010\u0096\u0001\u001a\u00030\u0097\u00012\t\u0008\u0001\u0010\u0098\u0001\u001a\u00020\u001eH\u0016J\u0015\u0010\u0099\u0001\u001a\u0002092\n\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u009b\u0001H\u0017J \u0010\u009c\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u000f\u0010\u009d\u0001\u001a\n\u0012\u0004\u0012\u00020!\u0018\u00010\u0019H\u0002J\u001c\u0010\u009e\u0001\u001a\u0002092\u0006\u0010r\u001a\u0002052\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010_H\u0002J\u001b\u0010\u009f\u0001\u001a\u00020\u00172\u0007\u0010\u00a0\u0001\u001a\u00020\u00082\u0007\u0010\u00a1\u0001\u001a\u00020\u0008H\u0002J=\u0010\u00a2\u0001\u001a\u00020\u0017\"\u0008\u0008\u0000\u0010x*\u00020\u00012\u0006\u0010y\u001a\u0002Hx2\u000c\u0008\u0002\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u00012\u000c\u0008\u0002\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008d\u0001H\u0007\u00a2\u0006\u0003\u0010\u00a3\u0001J=\u0010\u00a2\u0001\u001a\u00020\u0017\"\u0008\u0008\u0000\u0010x*\u00020\u00012\u0006\u0010y\u001a\u0002Hx2\u001a\u0010\u00a4\u0001\u001a\u0015\u0012\u0005\u0012\u00030\u00a5\u0001\u0012\u0004\u0012\u00020\u00170\u0013\u00a2\u0006\u0003\u0008\u00a6\u0001H\u0007\u00a2\u0006\u0003\u0010\u00a7\u0001J\u0013\u0010\u00a2\u0001\u001a\u00020\u00172\u0008\u0010\u0090\u0001\u001a\u00030\u00a8\u0001H\u0017J\u001f\u0010\u00a2\u0001\u001a\u00020\u00172\u0008\u0010\u0090\u0001\u001a\u00030\u00a8\u00012\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u0001H\u0017J+\u0010\u00a2\u0001\u001a\u00020\u00172\u0008\u0010\u0090\u0001\u001a\u00030\u00a8\u00012\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u00012\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008d\u0001H\u0017J\u0013\u0010\u00a2\u0001\u001a\u00020\u00172\u0008\u0010\u00a9\u0001\u001a\u00030\u00aa\u0001H\u0017J\u001f\u0010\u00a2\u0001\u001a\u00020\u00172\u0008\u0010\u00a9\u0001\u001a\u00030\u00aa\u00012\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u0001H\u0017J+\u0010\u00a2\u0001\u001a\u00020\u00172\u0008\u0010\u00a9\u0001\u001a\u00030\u00aa\u00012\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u00012\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008d\u0001H\u0017J4\u0010\u00a2\u0001\u001a\u00020\u00172\u0006\u0010r\u001a\u0002052\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010_2\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u00012\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008d\u0001H\u0003J\u0013\u0010\u00a2\u0001\u001a\u00020\u00172\u0008\u0010\u00ab\u0001\u001a\u00030\u00ac\u0001H\u0017J\u001f\u0010\u00a2\u0001\u001a\u00020\u00172\u0008\u0010\u00ab\u0001\u001a\u00030\u00ac\u00012\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u0001H\u0017J\u001d\u0010\u00a2\u0001\u001a\u00020\u00172\u0008\u0010\u00ab\u0001\u001a\u00030\u00ac\u00012\u0008\u0010\u008c\u0001\u001a\u00030\u008d\u0001H\u0017J\u0014\u0010\u00a2\u0001\u001a\u00020\u00172\t\u0008\u0001\u0010\u00ad\u0001\u001a\u00020\u001eH\u0017J\u001f\u0010\u00a2\u0001\u001a\u00020\u00172\t\u0008\u0001\u0010\u00ad\u0001\u001a\u00020\u001e2\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010_H\u0017J+\u0010\u00a2\u0001\u001a\u00020\u00172\t\u0008\u0001\u0010\u00ad\u0001\u001a\u00020\u001e2\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010_2\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u0001H\u0017J7\u0010\u00a2\u0001\u001a\u00020\u00172\t\u0008\u0001\u0010\u00ad\u0001\u001a\u00020\u001e2\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010_2\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u00012\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008d\u0001H\u0017J-\u0010\u00a2\u0001\u001a\u00020\u00172\u0006\u0010y\u001a\u00020\u001f2\u000c\u0008\u0002\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u00012\u000c\u0008\u0002\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008d\u0001H\u0007J-\u0010\u00a2\u0001\u001a\u00020\u00172\u0006\u0010y\u001a\u00020\u001f2\u001a\u0010\u00a4\u0001\u001a\u0015\u0012\u0005\u0012\u00030\u00a5\u0001\u0012\u0004\u0012\u00020\u00170\u0013\u00a2\u0006\u0003\u0008\u00a6\u0001H\u0007J\t\u0010\u00ae\u0001\u001a\u000209H\u0017J\u0014\u0010\u00af\u0001\u001a\u00020\u00172\t\u0010\u00b0\u0001\u001a\u0004\u0018\u00010_H\u0003J\t\u0010\u00b1\u0001\u001a\u000209H\u0017J5\u0010\u00b1\u0001\u001a\u000209\"\u0008\u0008\u0000\u0010x*\u00020\u00012\u0006\u0010y\u001a\u0002Hx2\u0007\u0010\u0085\u0001\u001a\u0002092\t\u0008\u0002\u0010\u0086\u0001\u001a\u000209H\u0007\u00a2\u0006\u0003\u0010\u00b2\u0001J*\u0010\u00b1\u0001\u001a\u000209\"\n\u0008\u0000\u0010x\u0018\u0001*\u00020\u00012\u0007\u0010\u0085\u0001\u001a\u0002092\t\u0008\u0002\u0010\u0086\u0001\u001a\u000209H\u0087\u0008J\u001c\u0010\u00b1\u0001\u001a\u0002092\u0008\u0008\u0001\u0010{\u001a\u00020\u001e2\u0007\u0010\u0085\u0001\u001a\u000209H\u0017J%\u0010\u00b1\u0001\u001a\u0002092\u0008\u0008\u0001\u0010{\u001a\u00020\u001e2\u0007\u0010\u0085\u0001\u001a\u0002092\u0007\u0010\u0086\u0001\u001a\u000209H\u0017J%\u0010\u00b1\u0001\u001a\u0002092\u0006\u0010y\u001a\u00020\u001f2\u0007\u0010\u0085\u0001\u001a\u0002092\t\u0008\u0002\u0010\u0086\u0001\u001a\u000209H\u0007J\'\u0010\u00b3\u0001\u001a\u00020\u00172\u0006\u0010j\u001a\u00020\u00082\u000e\u0010\u00b4\u0001\u001a\t\u0012\u0004\u0012\u00020\u00170\u00b5\u0001H\u0000\u00a2\u0006\u0003\u0008\u00b6\u0001J5\u0010\u00b7\u0001\u001a\u000209\"\u0008\u0008\u0000\u0010x*\u00020\u00012\u0006\u0010y\u001a\u0002Hx2\u0007\u0010\u0085\u0001\u001a\u0002092\t\u0008\u0002\u0010\u0086\u0001\u001a\u000209H\u0002\u00a2\u0006\u0003\u0010\u00b2\u0001J\'\u0010\u00b7\u0001\u001a\u0002092\u0008\u0008\u0001\u0010{\u001a\u00020\u001e2\u0007\u0010\u0085\u0001\u001a\u0002092\t\u0008\u0002\u0010\u0086\u0001\u001a\u000209H\u0003J#\u0010\u00b7\u0001\u001a\u0002092\u0006\u0010y\u001a\u00020\u001f2\u0007\u0010\u0085\u0001\u001a\u0002092\u0007\u0010\u0086\u0001\u001a\u000209H\u0002J-\u0010\u00b8\u0001\u001a\u00020\u00172\u0006\u0010j\u001a\u00020\u00082\t\u0008\u0002\u0010\u0086\u0001\u001a\u0002092\u000f\u0008\u0002\u0010\u00b9\u0001\u001a\u0008\u0012\u0004\u0012\u00020!0\u0019H\u0002J\u0015\u0010\u00ba\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0000\u00a2\u0006\u0003\u0008\u00bb\u0001J\u0011\u0010\u00bc\u0001\u001a\u00020\u00172\u0006\u0010v\u001a\u00020fH\u0016J\u0014\u0010\u00bd\u0001\u001a\u00020\u00172\t\u0010\u00be\u0001\u001a\u0004\u0018\u00010_H\u0017J5\u0010\u00bf\u0001\u001a\u0002092\u0007\u0010\u00c0\u0001\u001a\u00020\u001e2\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010_2\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u00012\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008d\u0001H\u0002J\u0011\u0010\u00bf\u0001\u001a\u0002092\u0006\u0010y\u001a\u00020\u001fH\u0002J\u000b\u0010\u0086\u0001\u001a\u0004\u0018\u00010_H\u0017J\u001b\u0010C\u001a\u00020\u00172\u0006\u0010@\u001a\u00020\u000c2\t\u0010\u00b0\u0001\u001a\u0004\u0018\u00010_H\u0017J\u0013\u0010C\u001a\u00020\u00172\t\u0008\u0001\u0010\u00c1\u0001\u001a\u00020\u001eH\u0017J\u001e\u0010C\u001a\u00020\u00172\t\u0008\u0001\u0010\u00c1\u0001\u001a\u00020\u001e2\t\u0010\u00b0\u0001\u001a\u0004\u0018\u00010_H\u0017J\u0012\u0010\u00c2\u0001\u001a\u00020\u00172\u0007\u0010\u00c3\u0001\u001a\u00020PH\u0017J\u0012\u0010\u00c4\u0001\u001a\u00020\u00172\u0007\u0010\u00c5\u0001\u001a\u00020cH\u0017J\u0013\u0010\u00c6\u0001\u001a\u00020\u00172\u0008\u0010\u00c7\u0001\u001a\u00030\u00c8\u0001H\u0017J\t\u0010\u00c9\u0001\u001a\u000209H\u0002J\t\u0010\u00ca\u0001\u001a\u000209H\u0002J\u001a\u0010\u00cb\u0001\u001a\u0004\u0018\u00010\u00082\u0007\u0010\u00a0\u0001\u001a\u00020\u0008H\u0000\u00a2\u0006\u0003\u0008\u00cc\u0001J\u000f\u0010\u00cd\u0001\u001a\u00020\u0017H\u0000\u00a2\u0006\u0003\u0008\u00ce\u0001J\t\u0010\u00cf\u0001\u001a\u00020\u0017H\u0002J\"\u0010\u00d0\u0001\u001a\u0004\u0018\u000105*\u0002052\u0008\u0008\u0001\u0010{\u001a\u00020\u001e2\u0007\u0010\u00d1\u0001\u001a\u000209H\u0007J\u0013\u0010\u00d2\u0001\u001a\u00020\u000c*\u0008\u0012\u0004\u0012\u00020\u00080\u0019H\u0002Jb\u0010\u00d3\u0001\u001a\u00020\u0017*\n\u0012\u0006\u0008\u0001\u0012\u0002050\\2\r\u0010\u0088\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u00012\n\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u008d\u00012$\u0008\u0002\u0010\u00d4\u0001\u001a\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u00170\u0013H\u0002JL\u0010\u00b7\u0001\u001a\u00020\u0017*\n\u0012\u0006\u0008\u0001\u0012\u0002050\\2\u0006\u0010j\u001a\u00020\u00082\u0007\u0010\u0086\u0001\u001a\u0002092$\u0008\u0002\u0010\u00d4\u0001\u001a\u001d\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(j\u0012\u0004\u0012\u00020\u00170\u0013H\u0002R\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010\u0012\u001a\u001f\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(\u0016\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u001e\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010 \u001a\u0014\u0012\u0004\u0012\u00020\u001f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0\u00190\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\"\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010%R\u001a\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0002\u001a\u00020\u00038\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\"\u0010)\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070*8GX\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0016\u0010-\u001a\u0004\u0018\u00010\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u0017\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u000801\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u0016\u00104\u001a\u0004\u0018\u0001058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R\u000e\u00108\u001a\u000209X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010:\u001a\u00020\u001e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008;\u0010<R\u000e\u0010=\u001a\u00020\u001eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u000209X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010?\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u0002090\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010@\u001a\u00020\u000c2\u0006\u0010@\u001a\u00020\u000c8W@WX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001c\u0010E\u001a\u00020F8@X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u0010\u0010K\u001a\u0004\u0018\u00010LX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u00020NX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010O\u001a\u0004\u0018\u00010PX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010Q\u001a\u00020L8VX\u0096\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008T\u0010U\u001a\u0004\u0008R\u0010SR$\u0010V\u001a\u00020\u000e2\u0006\u0010V\u001a\u00020\u000e8V@WX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR&\u0010[\u001a\u001a\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u0002050\\\u0012\u0008\u0012\u00060]R\u00020\u00000\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010^\u001a\u0004\u0018\u00010_X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010`\u001a\u00020aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010b\u001a\u0004\u0018\u00010cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010d\u001a\u0008\u0012\u0004\u0012\u00020f0eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010g\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020h0\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010i\u001a\u001f\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0014\u0012\u0008\u0008\u0015\u0012\u0004\u0008\u0008(j\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010k\u001a\u0004\u0018\u00010\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010/R\u0010\u0010m\u001a\u0004\u0018\u00010nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010o\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070*\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008p\u0010,\u00a8\u0006\u00d8\u0001"
    }
    d2 = {
        "Landroidx/navigation/NavController;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "_currentBackStack",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "Landroidx/navigation/NavBackStackEntry;",
        "_currentBackStackEntryFlow",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "_graph",
        "Landroidx/navigation/NavGraph;",
        "_navigatorProvider",
        "Landroidx/navigation/NavigatorProvider;",
        "_visibleEntries",
        "activity",
        "Landroid/app/Activity;",
        "addToBackStackHandler",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "backStackEntry",
        "",
        "backQueue",
        "Lkotlin/collections/ArrayDeque;",
        "backStackEntriesToDispatch",
        "",
        "backStackMap",
        "",
        "",
        "",
        "backStackStates",
        "Landroidx/navigation/NavBackStackEntryState;",
        "backStackToRestore",
        "",
        "Landroid/os/Parcelable;",
        "[Landroid/os/Parcelable;",
        "childToParentEntries",
        "getContext",
        "()Landroid/content/Context;",
        "currentBackStack",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getCurrentBackStack",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "currentBackStackEntry",
        "getCurrentBackStackEntry",
        "()Landroidx/navigation/NavBackStackEntry;",
        "currentBackStackEntryFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "getCurrentBackStackEntryFlow",
        "()Lkotlinx/coroutines/flow/Flow;",
        "currentDestination",
        "Landroidx/navigation/NavDestination;",
        "getCurrentDestination",
        "()Landroidx/navigation/NavDestination;",
        "deepLinkHandled",
        "",
        "destinationCountOnBackStack",
        "getDestinationCountOnBackStack",
        "()I",
        "dispatchReentrantCount",
        "enableOnBackPressedCallback",
        "entrySavedState",
        "graph",
        "getGraph",
        "()Landroidx/navigation/NavGraph;",
        "setGraph",
        "(Landroidx/navigation/NavGraph;)V",
        "hostLifecycleState",
        "Landroidx/lifecycle/Lifecycle$State;",
        "getHostLifecycleState$navigation_runtime_release",
        "()Landroidx/lifecycle/Lifecycle$State;",
        "setHostLifecycleState$navigation_runtime_release",
        "(Landroidx/lifecycle/Lifecycle$State;)V",
        "inflater",
        "Landroidx/navigation/NavInflater;",
        "lifecycleObserver",
        "Landroidx/lifecycle/LifecycleObserver;",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "navInflater",
        "getNavInflater",
        "()Landroidx/navigation/NavInflater;",
        "navInflater$delegate",
        "Lkotlin/Lazy;",
        "navigatorProvider",
        "getNavigatorProvider",
        "()Landroidx/navigation/NavigatorProvider;",
        "setNavigatorProvider",
        "(Landroidx/navigation/NavigatorProvider;)V",
        "navigatorState",
        "Landroidx/navigation/Navigator;",
        "Landroidx/navigation/NavController$NavControllerNavigatorState;",
        "navigatorStateToRestore",
        "Landroid/os/Bundle;",
        "onBackPressedCallback",
        "Landroidx/activity/OnBackPressedCallback;",
        "onBackPressedDispatcher",
        "Landroidx/activity/OnBackPressedDispatcher;",
        "onDestinationChangedListeners",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Landroidx/navigation/NavController$OnDestinationChangedListener;",
        "parentToChildCount",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "popFromBackStackHandler",
        "popUpTo",
        "previousBackStackEntry",
        "getPreviousBackStackEntry",
        "viewModel",
        "Landroidx/navigation/NavControllerViewModel;",
        "visibleEntries",
        "getVisibleEntries",
        "addEntryToBackStack",
        "node",
        "finalArgs",
        "restoredEntries",
        "addOnDestinationChangedListener",
        "listener",
        "clearBackStack",
        "T",
        "route",
        "(Ljava/lang/Object;)Z",
        "destinationId",
        "clearBackStackInternal",
        "createDeepLink",
        "Landroidx/navigation/NavDeepLinkBuilder;",
        "dispatchOnDestinationChanged",
        "enableOnBackPressed",
        "enabled",
        "executePopOperations",
        "popOperations",
        "foundDestination",
        "inclusive",
        "saveState",
        "executeRestoreState",
        "entries",
        "args",
        "navOptions",
        "Landroidx/navigation/NavOptions;",
        "navigatorExtras",
        "Landroidx/navigation/Navigator$Extras;",
        "findDestination",
        "findInvalidDestinationDisplayNameInDeepLink",
        "deepLink",
        "",
        "generateRouteFilled",
        "(Ljava/lang/Object;)Ljava/lang/String;",
        "getBackStackEntry",
        "(Ljava/lang/Object;)Landroidx/navigation/NavBackStackEntry;",
        "getViewModelStoreOwner",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "navGraphId",
        "handleDeepLink",
        "intent",
        "Landroid/content/Intent;",
        "instantiateBackStack",
        "backStackState",
        "launchSingleTopInternal",
        "linkChildToParent",
        "child",
        "parent",
        "navigate",
        "(Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V",
        "builder",
        "Landroidx/navigation/NavOptionsBuilder;",
        "Lkotlin/ExtensionFunctionType;",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "Landroid/net/Uri;",
        "request",
        "Landroidx/navigation/NavDeepLinkRequest;",
        "directions",
        "Landroidx/navigation/NavDirections;",
        "resId",
        "navigateUp",
        "onGraphCreated",
        "startDestinationArgs",
        "popBackStack",
        "(Ljava/lang/Object;ZZ)Z",
        "popBackStackFromNavigator",
        "onComplete",
        "Lkotlin/Function0;",
        "popBackStackFromNavigator$navigation_runtime_release",
        "popBackStackInternal",
        "popEntryFromBackStack",
        "savedState",
        "populateVisibleEntries",
        "populateVisibleEntries$navigation_runtime_release",
        "removeOnDestinationChangedListener",
        "restoreState",
        "navState",
        "restoreStateInternal",
        "id",
        "graphResId",
        "setLifecycleOwner",
        "owner",
        "setOnBackPressedDispatcher",
        "dispatcher",
        "setViewModelStore",
        "viewModelStore",
        "Landroidx/lifecycle/ViewModelStore;",
        "tryRelaunchUpToExplicitStack",
        "tryRelaunchUpToGeneratedStack",
        "unlinkChildFromParent",
        "unlinkChildFromParent$navigation_runtime_release",
        "updateBackStackLifecycle",
        "updateBackStackLifecycle$navigation_runtime_release",
        "updateOnBackPressedCallbackEnabled",
        "findDestinationComprehensive",
        "searchChildren",
        "getTopGraph",
        "navigateInternal",
        "handler",
        "Companion",
        "NavControllerNavigatorState",
        "OnDestinationChangedListener",
        "navigation-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/navigation/NavController$Companion;

.field private static final KEY_BACK_STACK:Ljava/lang/String; = "android-support-nav:controller:backStack"

.field private static final KEY_BACK_STACK_DEST_IDS:Ljava/lang/String; = "android-support-nav:controller:backStackDestIds"

.field private static final KEY_BACK_STACK_IDS:Ljava/lang/String; = "android-support-nav:controller:backStackIds"

.field private static final KEY_BACK_STACK_STATES_IDS:Ljava/lang/String; = "android-support-nav:controller:backStackStates"

.field private static final KEY_BACK_STACK_STATES_PREFIX:Ljava/lang/String; = "android-support-nav:controller:backStackStates:"

.field public static final KEY_DEEP_LINK_ARGS:Ljava/lang/String; = "android-support-nav:controller:deepLinkArgs"

.field public static final KEY_DEEP_LINK_EXTRAS:Ljava/lang/String; = "android-support-nav:controller:deepLinkExtras"

.field public static final KEY_DEEP_LINK_HANDLED:Ljava/lang/String; = "android-support-nav:controller:deepLinkHandled"

.field public static final KEY_DEEP_LINK_IDS:Ljava/lang/String; = "android-support-nav:controller:deepLinkIds"

.field public static final KEY_DEEP_LINK_INTENT:Ljava/lang/String; = "android-support-nav:controller:deepLinkIntent"

.field private static final KEY_NAVIGATOR_STATE:Ljava/lang/String; = "android-support-nav:controller:navigatorState"

.field private static final KEY_NAVIGATOR_STATE_NAMES:Ljava/lang/String; = "android-support-nav:controller:navigatorState:names"

.field private static final TAG:Ljava/lang/String; = "NavController"

.field private static deepLinkSaveState:Z


# instance fields
.field private final _currentBackStack:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _currentBackStackEntryFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private _graph:Landroidx/navigation/NavGraph;

.field private _navigatorProvider:Landroidx/navigation/NavigatorProvider;

.field private final _visibleEntries:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private activity:Landroid/app/Activity;

.field private addToBackStackHandler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final backQueue:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final backStackEntriesToDispatch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final backStackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final backStackStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/collections/ArrayDeque<",
            "Landroidx/navigation/NavBackStackEntryState;",
            ">;>;"
        }
    .end annotation
.end field

.field private backStackToRestore:[Landroid/os/Parcelable;

.field private final childToParentEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/navigation/NavBackStackEntry;",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final currentBackStack:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final currentBackStackEntryFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private deepLinkHandled:Z

.field private dispatchReentrantCount:I

.field private enableOnBackPressedCallback:Z

.field private final entrySavedState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/navigation/NavBackStackEntry;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

.field private inflater:Landroidx/navigation/NavInflater;

.field private final lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

.field private lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private final navInflater$delegate:Lkotlin/Lazy;

.field private final navigatorState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;",
            "Landroidx/navigation/NavController$NavControllerNavigatorState;",
            ">;"
        }
    .end annotation
.end field

.field private navigatorStateToRestore:Landroid/os/Bundle;

.field private final onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field private final onDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/navigation/NavController$OnDestinationChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final parentToChildCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/navigation/NavBackStackEntry;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private popFromBackStackHandler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private viewModel:Landroidx/navigation/NavControllerViewModel;

.field private final visibleEntries:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$K8jodmBuizwBSvVXOV95ACRvTsE(Landroidx/navigation/NavController;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/navigation/NavController;->lifecycleObserver$lambda$2(Landroidx/navigation/NavController;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/navigation/NavController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/navigation/NavController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/navigation/NavController;->Companion:Landroidx/navigation/NavController$Companion;

    .line 2775
    const/4 v0, 0x1

    sput-boolean v0, Landroidx/navigation/NavController;->deepLinkSaveState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    sget-object v1, Landroidx/navigation/NavController$activity$1;->INSTANCE:Landroidx/navigation/NavController$activity$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 86
    nop

    .local v0, "$this$firstOrNull$iv":Lkotlin/sequences/Sequence;
    const/4 v1, 0x0

    .line 2861
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Landroid/content/Context;

    .local v5, "it":Landroid/content/Context;
    const/4 v6, 0x0

    .line 86
    .local v6, "$i$a$-firstOrNull-NavController$activity$2":I
    instance-of v5, v5, Landroid/app/Activity;

    .line 2861
    .end local v5    # "it":Landroid/content/Context;
    .end local v6    # "$i$a$-firstOrNull-NavController$activity$2":I
    if-eqz v5, :cond_0

    goto :goto_0

    .line 2862
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    move-object v3, v4

    .end local v0    # "$this$firstOrNull$iv":Lkotlin/sequences/Sequence;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v3, Landroid/app/Activity;

    .line 81
    iput-object v3, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    .line 116
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    .line 119
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->_currentBackStack:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 129
    iget-object v0, p0, Landroidx/navigation/NavController;->_currentBackStack:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->currentBackStack:Lkotlinx/coroutines/flow/StateFlow;

    .line 132
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->_visibleEntries:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 151
    iget-object v0, p0, Landroidx/navigation/NavController;->_visibleEntries:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->visibleEntries:Lkotlinx/coroutines/flow/StateFlow;

    .line 153
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/navigation/NavController;->childToParentEntries:Ljava/util/Map;

    .line 154
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    .line 176
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    .line 177
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    .line 181
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavController;->onDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 182
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    iput-object v0, p0, Landroidx/navigation/NavController;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 193
    new-instance v0, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/navigation/NavController$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavController;)V

    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    iput-object v0, p0, Landroidx/navigation/NavController;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    .line 203
    new-instance v0, Landroidx/navigation/NavController$onBackPressedCallback$1;

    invoke-direct {v0, p0}, Landroidx/navigation/NavController$onBackPressedCallback$1;-><init>(Landroidx/navigation/NavController;)V

    check-cast v0, Landroidx/activity/OnBackPressedCallback;

    iput-object v0, p0, Landroidx/navigation/NavController;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/navigation/NavController;->enableOnBackPressedCallback:Z

    .line 232
    new-instance v1, Landroidx/navigation/NavigatorProvider;

    invoke-direct {v1}, Landroidx/navigation/NavigatorProvider;-><init>()V

    iput-object v1, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 256
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    .line 259
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Landroidx/navigation/NavController;->entrySavedState:Ljava/util/Map;

    .line 401
    nop

    .line 402
    iget-object v1, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    new-instance v2, Landroidx/navigation/NavGraphNavigator;

    iget-object v3, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-direct {v2, v3}, Landroidx/navigation/NavGraphNavigator;-><init>(Landroidx/navigation/NavigatorProvider;)V

    check-cast v2, Landroidx/navigation/Navigator;

    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 403
    iget-object v1, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    new-instance v2, Landroidx/navigation/ActivityNavigator;

    iget-object v3, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/navigation/ActivityNavigator;-><init>(Landroid/content/Context;)V

    check-cast v2, Landroidx/navigation/Navigator;

    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->addNavigator(Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    .line 404
    nop

    .line 1054
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Landroidx/navigation/NavController;->backStackEntriesToDispatch:Ljava/util/List;

    .line 1216
    new-instance v1, Landroidx/navigation/NavController$navInflater$2;

    invoke-direct {v1, p0}, Landroidx/navigation/NavController$navInflater$2;-><init>(Landroidx/navigation/NavController;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, p0, Landroidx/navigation/NavController;->navInflater$delegate:Lkotlin/Lazy;

    .line 2719
    sget-object v1, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v4}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->_currentBackStackEntryFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 2726
    iget-object v0, p0, Landroidx/navigation/NavController;->_currentBackStackEntryFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/MutableSharedFlow;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    iput-object v0, p0, Landroidx/navigation/NavController;->currentBackStackEntryFlow:Lkotlinx/coroutines/flow/Flow;

    .line 77
    return-void
.end method

.method public static final synthetic access$addEntryToBackStack(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V
    .locals 0
    .param p0, "$this"    # Landroidx/navigation/NavController;
    .param p1, "node"    # Landroidx/navigation/NavDestination;
    .param p2, "finalArgs"    # Landroid/os/Bundle;
    .param p3, "backStackEntry"    # Landroidx/navigation/NavBackStackEntry;
    .param p4, "restoredEntries"    # Ljava/util/List;

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/navigation/NavController;->addEntryToBackStack(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getAddToBackStackHandler$p(Landroidx/navigation/NavController;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 77
    iget-object v0, p0, Landroidx/navigation/NavController;->addToBackStackHandler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getBackQueue$p(Landroidx/navigation/NavController;)Lkotlin/collections/ArrayDeque;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 77
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    return-object v0
.end method

.method public static final synthetic access$getBackStackMap$p(Landroidx/navigation/NavController;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 77
    iget-object v0, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getDeepLinkSaveState$cp()Z
    .locals 1

    .line 77
    sget-boolean v0, Landroidx/navigation/NavController;->deepLinkSaveState:Z

    return v0
.end method

.method public static final synthetic access$getEntrySavedState$p(Landroidx/navigation/NavController;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 77
    iget-object v0, p0, Landroidx/navigation/NavController;->entrySavedState:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getInflater$p(Landroidx/navigation/NavController;)Landroidx/navigation/NavInflater;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 77
    iget-object v0, p0, Landroidx/navigation/NavController;->inflater:Landroidx/navigation/NavInflater;

    return-object v0
.end method

.method public static final synthetic access$getNavigatorState$p(Landroidx/navigation/NavController;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 77
    iget-object v0, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getPopFromBackStackHandler$p(Landroidx/navigation/NavController;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 77
    iget-object v0, p0, Landroidx/navigation/NavController;->popFromBackStackHandler:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getViewModel$p(Landroidx/navigation/NavController;)Landroidx/navigation/NavControllerViewModel;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 77
    iget-object v0, p0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    return-object v0
.end method

.method public static final synthetic access$get_currentBackStack$p(Landroidx/navigation/NavController;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 77
    iget-object v0, p0, Landroidx/navigation/NavController;->_currentBackStack:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$get_navigatorProvider$p(Landroidx/navigation/NavController;)Landroidx/navigation/NavigatorProvider;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 77
    iget-object v0, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    return-object v0
.end method

.method public static final synthetic access$get_visibleEntries$p(Landroidx/navigation/NavController;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .param p0, "$this"    # Landroidx/navigation/NavController;

    .line 77
    iget-object v0, p0, Landroidx/navigation/NavController;->_visibleEntries:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public static final synthetic access$popEntryFromBackStack(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V
    .locals 0
    .param p0, "$this"    # Landroidx/navigation/NavController;
    .param p1, "popUpTo"    # Landroidx/navigation/NavBackStackEntry;
    .param p2, "saveState"    # Z
    .param p3, "savedState"    # Lkotlin/collections/ArrayDeque;

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popEntryFromBackStack(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V

    return-void
.end method

.method public static final synthetic access$setDeepLinkSaveState$cp(Z)V
    .locals 0
    .param p0, "<set-?>"    # Z

    .line 77
    sput-boolean p0, Landroidx/navigation/NavController;->deepLinkSaveState:Z

    return-void
.end method

.method private final addEntryToBackStack(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V
    .locals 31
    .param p1, "node"    # Landroidx/navigation/NavDestination;
    .param p2, "finalArgs"    # Landroid/os/Bundle;
    .param p3, "backStackEntry"    # Landroidx/navigation/NavBackStackEntry;
    .param p4, "restoredEntries"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavDestination;",
            "Landroid/os/Bundle;",
            "Landroidx/navigation/NavBackStackEntry;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)V"
        }
    .end annotation

    .line 2188
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move-object/from16 v14, p3

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v13

    .line 2189
    .local v13, "newDest":Landroidx/navigation/NavDestination;
    instance-of v0, v13, Landroidx/navigation/FloatingWindow;

    if-nez v0, :cond_1

    .line 2194
    :cond_0
    iget-object v0, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2195
    iget-object v0, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/FloatingWindow;

    if-eqz v0, :cond_1

    .line 2196
    iget-object v0, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->popBackStackInternal$default(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2204
    :cond_1
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    move-object v5, v0

    .line 2205
    .local v5, "hierarchy":Lkotlin/collections/ArrayDeque;
    move-object v0, v13

    .line 2206
    .local v0, "destination":Landroidx/navigation/NavDestination;
    instance-of v1, v7, Landroidx/navigation/NavGraph;

    const/16 v18, 0x0

    if-eqz v1, :cond_8

    move-object/from16 v19, v0

    .line 2208
    .end local v0    # "destination":Landroidx/navigation/NavDestination;
    .local v19, "destination":Landroidx/navigation/NavDestination;
    :goto_0
    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v4

    .line 2209
    .local v4, "parent":Landroidx/navigation/NavGraph;
    if-eqz v4, :cond_6

    .line 2211
    move-object/from16 v0, p4

    .local v0, "$this$lastOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 2959
    .local v1, "$i$f$lastOrNull":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 2960
    .local v2, "iterator$iv":Ljava/util/ListIterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2961
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    .line 2962
    .local v3, "element$iv":Ljava/lang/Object;
    move-object v8, v3

    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .local v8, "restoredEntry":Landroidx/navigation/NavBackStackEntry;
    const/4 v9, 0x0

    .line 2212
    .local v9, "$i$a$-lastOrNull-NavController$addEntryToBackStack$entry$1":I
    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 2962
    .end local v8    # "restoredEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v9    # "$i$a$-lastOrNull-NavController$addEntryToBackStack$entry$1":I
    if-eqz v8, :cond_2

    goto :goto_1

    .line 2964
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_3
    move-object/from16 v3, v18

    .line 2211
    .end local v0    # "$this$lastOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$lastOrNull":I
    .end local v2    # "iterator$iv":Ljava/util/ListIterator;
    :goto_1
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    if-nez v3, :cond_4

    .line 2214
    sget-object v8, Landroidx/navigation/NavBackStackEntry;->Companion:Landroidx/navigation/NavBackStackEntry$Companion;

    .line 2215
    iget-object v9, v6, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    .line 2216
    move-object v10, v4

    check-cast v10, Landroidx/navigation/NavDestination;

    .line 2217
    nop

    .line 2218
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v12

    .line 2219
    iget-object v0, v6, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    check-cast v0, Landroidx/navigation/NavViewModelStoreProvider;

    .line 2214
    const/16 v16, 0x60

    const/16 v17, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v11, p2

    move-object/from16 v20, v13

    .end local v13    # "newDest":Landroidx/navigation/NavDestination;
    .local v20, "newDest":Landroidx/navigation/NavDestination;
    move-object v13, v0

    move-object v0, v14

    move-object v14, v1

    move-object v1, v15

    move-object v15, v2

    invoke-static/range {v8 .. v17}, Landroidx/navigation/NavBackStackEntry$Companion;->create$default(Landroidx/navigation/NavBackStackEntry$Companion;Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v3

    goto :goto_2

    .line 2211
    .end local v20    # "newDest":Landroidx/navigation/NavDestination;
    .restart local v13    # "newDest":Landroidx/navigation/NavDestination;
    :cond_4
    move-object/from16 v20, v13

    move-object v0, v14

    move-object v1, v15

    .end local v13    # "newDest":Landroidx/navigation/NavDestination;
    .restart local v20    # "newDest":Landroidx/navigation/NavDestination;
    :goto_2
    nop

    .line 2210
    move-object v8, v3

    .line 2221
    .local v8, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v5, v8}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2223
    iget-object v2, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v2

    if-ne v2, v4, :cond_5

    .line 2224
    iget-object v2, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v11, 0x0

    move-object v12, v0

    move-object/from16 v0, p0

    move-object v13, v1

    move-object v1, v2

    move v2, v3

    move-object v3, v11

    move-object v11, v4

    .end local v4    # "parent":Landroidx/navigation/NavGraph;
    .local v11, "parent":Landroidx/navigation/NavGraph;
    move v4, v9

    move-object v9, v5

    .end local v5    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .local v9, "hierarchy":Lkotlin/collections/ArrayDeque;
    move-object v5, v10

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->popEntryFromBackStack$default(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V

    goto :goto_3

    .line 2223
    .end local v9    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .end local v11    # "parent":Landroidx/navigation/NavGraph;
    .restart local v4    # "parent":Landroidx/navigation/NavGraph;
    .restart local v5    # "hierarchy":Lkotlin/collections/ArrayDeque;
    :cond_5
    move-object v12, v0

    move-object v13, v1

    move-object v11, v4

    move-object v9, v5

    .end local v4    # "parent":Landroidx/navigation/NavGraph;
    .end local v5    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .restart local v9    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .restart local v11    # "parent":Landroidx/navigation/NavGraph;
    goto :goto_3

    .line 2209
    .end local v8    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v9    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .end local v11    # "parent":Landroidx/navigation/NavGraph;
    .end local v20    # "newDest":Landroidx/navigation/NavDestination;
    .restart local v4    # "parent":Landroidx/navigation/NavGraph;
    .restart local v5    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .restart local v13    # "newDest":Landroidx/navigation/NavDestination;
    :cond_6
    move-object v11, v4

    move-object v9, v5

    move-object/from16 v20, v13

    move-object v12, v14

    move-object v13, v15

    .line 2227
    .end local v4    # "parent":Landroidx/navigation/NavGraph;
    .end local v5    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .end local v13    # "newDest":Landroidx/navigation/NavDestination;
    .restart local v9    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .restart local v11    # "parent":Landroidx/navigation/NavGraph;
    .restart local v20    # "newDest":Landroidx/navigation/NavDestination;
    :goto_3
    move-object v0, v11

    check-cast v0, Landroidx/navigation/NavDestination;

    .line 2228
    .end local v11    # "parent":Landroidx/navigation/NavGraph;
    .end local v19    # "destination":Landroidx/navigation/NavDestination;
    .local v0, "destination":Landroidx/navigation/NavDestination;
    if-eqz v0, :cond_9

    if-ne v0, v7, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v19, v0

    move-object v5, v9

    move-object v14, v12

    move-object v15, v13

    move-object/from16 v13, v20

    goto/16 :goto_0

    .line 2206
    .end local v9    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .end local v20    # "newDest":Landroidx/navigation/NavDestination;
    .restart local v5    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .restart local v13    # "newDest":Landroidx/navigation/NavDestination;
    :cond_8
    move-object v9, v5

    move-object/from16 v20, v13

    move-object v12, v14

    move-object v13, v15

    .line 2235
    .end local v5    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .end local v13    # "newDest":Landroidx/navigation/NavDestination;
    .restart local v9    # "hierarchy":Lkotlin/collections/ArrayDeque;
    .restart local v20    # "newDest":Landroidx/navigation/NavDestination;
    :cond_9
    :goto_4
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v1, v20

    goto :goto_5

    :cond_a
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    :goto_5
    move-object v0, v1

    move-object v8, v0

    .line 2236
    .end local v0    # "destination":Landroidx/navigation/NavDestination;
    .local v8, "destination":Landroidx/navigation/NavDestination;
    :goto_6
    if-eqz v8, :cond_11

    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    invoke-virtual {v6, v0}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v0

    if-eq v0, v8, :cond_11

    .line 2237
    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    .line 2238
    .local v0, "parent":Landroidx/navigation/NavGraph;
    if-eqz v0, :cond_10

    .line 2239
    const/4 v1, 0x0

    if-eqz v13, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    move v1, v3

    :cond_b
    if-eqz v1, :cond_c

    move-object/from16 v15, v18

    goto :goto_7

    :cond_c
    move-object v15, v13

    :goto_7
    move-object v1, v15

    .line 2241
    .local v1, "args":Landroid/os/Bundle;
    move-object/from16 v2, p4

    .local v2, "$this$lastOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 2965
    .local v3, "$i$f$lastOrNull":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 2966
    .local v4, "iterator$iv":Ljava/util/ListIterator;
    :cond_d
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2967
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    .line 2968
    .local v5, "element$iv":Ljava/lang/Object;
    move-object v10, v5

    check-cast v10, Landroidx/navigation/NavBackStackEntry;

    .local v10, "restoredEntry":Landroidx/navigation/NavBackStackEntry;
    const/4 v11, 0x0

    .line 2242
    .local v11, "$i$a$-lastOrNull-NavController$addEntryToBackStack$entry$2":I
    invoke-virtual {v10}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v14

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 2968
    .end local v10    # "restoredEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v11    # "$i$a$-lastOrNull-NavController$addEntryToBackStack$entry$2":I
    if-eqz v10, :cond_d

    goto :goto_8

    .line 2970
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_e
    move-object/from16 v5, v18

    .line 2241
    .end local v2    # "$this$lastOrNull$iv":Ljava/util/List;
    .end local v3    # "$i$f$lastOrNull":I
    .end local v4    # "iterator$iv":Ljava/util/ListIterator;
    :goto_8
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    if-nez v5, :cond_f

    .line 2244
    sget-object v21, Landroidx/navigation/NavBackStackEntry;->Companion:Landroidx/navigation/NavBackStackEntry$Companion;

    .line 2245
    iget-object v2, v6, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    .line 2246
    move-object/from16 v23, v0

    check-cast v23, Landroidx/navigation/NavDestination;

    .line 2247
    invoke-virtual {v0, v1}, Landroidx/navigation/NavGraph;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v24

    .line 2248
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v25

    .line 2249
    iget-object v3, v6, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    move-object/from16 v26, v3

    check-cast v26, Landroidx/navigation/NavViewModelStoreProvider;

    .line 2244
    const/16 v29, 0x60

    const/16 v30, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v2

    invoke-static/range {v21 .. v30}, Landroidx/navigation/NavBackStackEntry$Companion;->create$default(Landroidx/navigation/NavBackStackEntry$Companion;Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v5

    .line 2241
    :cond_f
    nop

    .line 2240
    move-object v2, v5

    .line 2251
    .local v2, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v9, v2}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2253
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "entry":Landroidx/navigation/NavBackStackEntry;
    :cond_10
    move-object v8, v0

    check-cast v8, Landroidx/navigation/NavDestination;

    .end local v0    # "parent":Landroidx/navigation/NavGraph;
    goto :goto_6

    .line 2256
    :cond_11
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    move-object/from16 v0, v20

    goto :goto_9

    :cond_12
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    .line 2255
    :goto_9
    move-object v10, v0

    .line 2259
    .local v10, "overlappingDestination":Landroidx/navigation/NavDestination;
    :goto_a
    iget-object v0, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2260
    iget-object v0, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_13

    .line 2261
    iget-object v0, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.navigation.NavGraph"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v10}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    .line 2263
    iget-object v0, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->popEntryFromBackStack$default(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V

    goto :goto_a

    .line 2267
    :cond_13
    iget-object v0, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-nez v0, :cond_14

    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 2268
    .local v0, "firstEntry":Landroidx/navigation/NavBackStackEntry;
    :cond_14
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    goto :goto_b

    :cond_15
    move-object/from16 v1, v18

    :goto_b
    iget-object v2, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 2270
    move-object/from16 v1, p4

    .local v1, "$this$lastOrNull$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 2971
    .local v2, "$i$f$lastOrNull":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 2972
    .local v3, "iterator$iv":Ljava/util/ListIterator;
    :cond_16
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 2973
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    .line 2974
    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .local v5, "restoredEntry":Landroidx/navigation/NavBackStackEntry;
    const/4 v11, 0x0

    .line 2271
    .local v11, "$i$a$-lastOrNull-NavController$addEntryToBackStack$entry$3":I
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v14

    iget-object v15, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 2974
    .end local v5    # "restoredEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v11    # "$i$a$-lastOrNull-NavController$addEntryToBackStack$entry$3":I
    if-eqz v5, :cond_16

    move-object/from16 v18, v4

    goto :goto_c

    .line 2976
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_17
    nop

    .line 2270
    .end local v1    # "$this$lastOrNull$iv":Ljava/util/List;
    .end local v2    # "$i$f$lastOrNull":I
    .end local v3    # "iterator$iv":Ljava/util/ListIterator;
    :goto_c
    check-cast v18, Landroidx/navigation/NavBackStackEntry;

    if-nez v18, :cond_18

    .line 2273
    sget-object v21, Landroidx/navigation/NavBackStackEntry;->Companion:Landroidx/navigation/NavBackStackEntry$Companion;

    .line 2274
    iget-object v1, v6, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    .line 2275
    iget-object v2, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v23, v2

    check-cast v23, Landroidx/navigation/NavDestination;

    .line 2276
    iget-object v2, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v13}, Landroidx/navigation/NavGraph;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v24

    .line 2277
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v25

    .line 2278
    iget-object v2, v6, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    move-object/from16 v26, v2

    check-cast v26, Landroidx/navigation/NavViewModelStoreProvider;

    .line 2273
    const/16 v29, 0x60

    const/16 v30, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v1

    invoke-static/range {v21 .. v30}, Landroidx/navigation/NavBackStackEntry$Companion;->create$default(Landroidx/navigation/NavBackStackEntry$Companion;Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v18

    .line 2270
    :cond_18
    nop

    .line 2269
    move-object/from16 v1, v18

    .line 2280
    .local v1, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v9, v1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2284
    .end local v1    # "entry":Landroidx/navigation/NavBackStackEntry;
    :cond_19
    move-object v1, v9

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 2977
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .local v5, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v11, 0x0

    .line 2286
    .local v11, "$i$a$-forEach-NavController$addEntryToBackStack$1":I
    iget-object v14, v6, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v15

    invoke-virtual {v15}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v14

    .line 2285
    nop

    .line 2288
    .local v14, "navigator":Landroidx/navigation/Navigator;
    iget-object v15, v6, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_1a

    check-cast v15, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 2287
    nop

    .line 2291
    .local v15, "navigatorBackStack":Landroidx/navigation/NavController$NavControllerNavigatorState;
    invoke-virtual {v15, v5}, Landroidx/navigation/NavController$NavControllerNavigatorState;->addInternal(Landroidx/navigation/NavBackStackEntry;)V

    .line 2292
    nop

    .line 2977
    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v11    # "$i$a$-forEach-NavController$addEntryToBackStack$1":I
    .end local v14    # "navigator":Landroidx/navigation/Navigator;
    .end local v15    # "navigatorBackStack":Landroidx/navigation/NavController$NavControllerNavigatorState;
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_d

    .line 2288
    .restart local v4    # "element$iv":Ljava/lang/Object;
    .restart local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .restart local v11    # "$i$a$-forEach-NavController$addEntryToBackStack$1":I
    .restart local v14    # "navigator":Landroidx/navigation/Navigator;
    :cond_1a
    const/4 v3, 0x0

    .line 2289
    .local v3, "$i$a$-checkNotNull-NavController$addEntryToBackStack$1$navigatorBackStack$1":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "firstEntry":Landroidx/navigation/NavBackStackEntry;
    .local v16, "firstEntry":Landroidx/navigation/NavBackStackEntry;
    const-string v0, "NavigatorBackStack for "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " should already be created"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2288
    .end local v3    # "$i$a$-checkNotNull-NavController$addEntryToBackStack$1$navigatorBackStack$1":I
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2978
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v11    # "$i$a$-forEach-NavController$addEntryToBackStack$1":I
    .end local v14    # "navigator":Landroidx/navigation/Navigator;
    .end local v16    # "firstEntry":Landroidx/navigation/NavBackStackEntry;
    .restart local v0    # "firstEntry":Landroidx/navigation/NavBackStackEntry;
    :cond_1b
    move-object/from16 v16, v0

    .line 2293
    .end local v0    # "firstEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    .restart local v16    # "firstEntry":Landroidx/navigation/NavBackStackEntry;
    iget-object v0, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    move-object v1, v9

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 2296
    iget-object v0, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0, v12}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 2300
    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0, v12}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 2979
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .local v4, "it":Landroidx/navigation/NavBackStackEntry;
    const/4 v5, 0x0

    .line 2301
    .local v5, "$i$a$-forEach-NavController$addEntryToBackStack$2":I
    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v11

    .line 2302
    .local v11, "parent":Landroidx/navigation/NavGraph;
    if-eqz v11, :cond_1c

    .line 2303
    invoke-virtual {v11}, Landroidx/navigation/NavGraph;->getId()I

    move-result v14

    invoke-virtual {v6, v14}, Landroidx/navigation/NavController;->getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v14

    invoke-direct {v6, v4, v14}, Landroidx/navigation/NavController;->linkChildToParent(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    .line 2305
    :cond_1c
    nop

    .line 2979
    .end local v4    # "it":Landroidx/navigation/NavBackStackEntry;
    .end local v5    # "$i$a$-forEach-NavController$addEntryToBackStack$2":I
    .end local v11    # "parent":Landroidx/navigation/NavGraph;
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_e

    .line 2980
    :cond_1d
    nop

    .line 2306
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method static synthetic addEntryToBackStack$default(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    .line 2182
    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 2186
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p4

    .line 2182
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/navigation/NavController;->addEntryToBackStack(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: addEntryToBackStack"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final clearBackStackInternal(I)Z
    .locals 9
    .param p1, "destinationId"    # I

    .line 899
    iget-object v0, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 2875
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .local v5, "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    const/4 v6, 0x0

    .line 899
    .local v6, "$i$a$-forEach-NavController$clearBackStackInternal$1":I
    invoke-virtual {v5, v4}, Landroidx/navigation/NavController$NavControllerNavigatorState;->setNavigating(Z)V

    .line 2875
    .end local v5    # "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v6    # "$i$a$-forEach-NavController$clearBackStackInternal$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 2876
    :cond_0
    nop

    .line 901
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    sget-object v0, Landroidx/navigation/NavController$clearBackStackInternal$restored$1;->INSTANCE:Landroidx/navigation/NavController$clearBackStackInternal$restored$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Landroidx/navigation/NavOptionsBuilderKt;->navOptions(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Landroidx/navigation/NavController;->restoreStateInternal(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z

    move-result v0

    .line 900
    nop

    .line 902
    .local v0, "restored":Z
    iget-object v1, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 2877
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v7, v5

    check-cast v7, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .local v7, "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    const/4 v8, 0x0

    .line 902
    .local v8, "$i$a$-forEach-NavController$clearBackStackInternal$2":I
    invoke-virtual {v7, v6}, Landroidx/navigation/NavController$NavControllerNavigatorState;->setNavigating(Z)V

    .line 2877
    .end local v7    # "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v8    # "$i$a$-forEach-NavController$clearBackStackInternal$2":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 2878
    :cond_1
    nop

    .line 903
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v4, v6}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    return v4
.end method

.method private final clearBackStackInternal(Ljava/lang/String;)Z
    .locals 9
    .param p1, "route"    # Ljava/lang/String;

    .line 908
    iget-object v0, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 2879
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .local v5, "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    const/4 v6, 0x0

    .line 908
    .local v6, "$i$a$-forEach-NavController$clearBackStackInternal$3":I
    invoke-virtual {v5, v4}, Landroidx/navigation/NavController$NavControllerNavigatorState;->setNavigating(Z)V

    .line 2879
    .end local v5    # "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v6    # "$i$a$-forEach-NavController$clearBackStackInternal$3":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 2880
    :cond_0
    nop

    .line 909
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    invoke-direct {p0, p1}, Landroidx/navigation/NavController;->restoreStateInternal(Ljava/lang/String;)Z

    move-result v0

    .line 910
    .local v0, "restored":Z
    iget-object v1, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 2881
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v7, v5

    check-cast v7, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .local v7, "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    const/4 v8, 0x0

    .line 910
    .local v8, "$i$a$-forEach-NavController$clearBackStackInternal$4":I
    invoke-virtual {v7, v6}, Landroidx/navigation/NavController$NavControllerNavigatorState;->setNavigating(Z)V

    .line 2881
    .end local v7    # "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v8    # "$i$a$-forEach-NavController$clearBackStackInternal$4":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 2882
    :cond_1
    nop

    .line 911
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v4, v6}, Landroidx/navigation/NavController;->popBackStackInternal(Ljava/lang/String;ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    return v4
.end method

.method private final dispatchOnDestinationChanged()Z
    .locals 9

    .line 1065
    nop

    :goto_0
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v0, v0, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->popEntryFromBackStack$default(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V

    goto :goto_0

    .line 1068
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 1069
    .local v0, "lastBackStackEntry":Landroidx/navigation/NavBackStackEntry;
    if-eqz v0, :cond_1

    .line 1070
    iget-object v1, p0, Landroidx/navigation/NavController;->backStackEntriesToDispatch:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1075
    :cond_1
    iget v1, p0, Landroidx/navigation/NavController;->dispatchReentrantCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/navigation/NavController;->dispatchReentrantCount:I

    .line 1076
    invoke-virtual {p0}, Landroidx/navigation/NavController;->updateBackStackLifecycle$navigation_runtime_release()V

    .line 1077
    iget v1, p0, Landroidx/navigation/NavController;->dispatchReentrantCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/navigation/NavController;->dispatchReentrantCount:I

    .line 1079
    iget v1, p0, Landroidx/navigation/NavController;->dispatchReentrantCount:I

    if-nez v1, :cond_4

    .line 1081
    iget-object v1, p0, Landroidx/navigation/NavController;->backStackEntriesToDispatch:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 1082
    .local v1, "dispatchList":Ljava/util/List;
    iget-object v3, p0, Landroidx/navigation/NavController;->backStackEntriesToDispatch:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1083
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 1085
    .local v4, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    iget-object v5, p0, Landroidx/navigation/NavController;->onDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavController$OnDestinationChangedListener;

    .line 1086
    .local v6, "listener":Landroidx/navigation/NavController$OnDestinationChangedListener;
    nop

    .line 1087
    nop

    .line 1088
    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v7

    .line 1089
    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    .line 1086
    invoke-interface {v6, p0, v7, v8}, Landroidx/navigation/NavController$OnDestinationChangedListener;->onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    .end local v6    # "listener":Landroidx/navigation/NavController$OnDestinationChangedListener;
    goto :goto_2

    .line 1092
    :cond_2
    iget-object v5, p0, Landroidx/navigation/NavController;->_currentBackStackEntryFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    invoke-interface {v5, v4}, Lkotlinx/coroutines/flow/MutableSharedFlow;->tryEmit(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1094
    .end local v4    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    :cond_3
    iget-object v3, p0, Landroidx/navigation/NavController;->_currentBackStack:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->tryEmit(Ljava/lang/Object;)Z

    .line 1095
    iget-object v3, p0, Landroidx/navigation/NavController;->_visibleEntries:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->populateVisibleEntries$navigation_runtime_release()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->tryEmit(Ljava/lang/Object;)Z

    .line 1097
    .end local v1    # "dispatchList":Ljava/util/List;
    :cond_4
    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method public static final enableDeepLinkSaveState(Z)V
    .locals 1
    .param p0, "saveState"    # Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/navigation/NavController;->Companion:Landroidx/navigation/NavController$Companion;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavController$Companion;->enableDeepLinkSaveState(Z)V

    .line 2789
    return-void
.end method

.method private final executePopOperations(Ljava/util/List;Landroidx/navigation/NavDestination;ZZ)Z
    .locals 16
    .param p1, "popOperations"    # Ljava/util/List;
    .param p2, "foundDestination"    # Landroidx/navigation/NavDestination;
    .param p3, "inclusive"    # Z
    .param p4, "saveState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/navigation/Navigator<",
            "*>;>;",
            "Landroidx/navigation/NavDestination;",
            "ZZ)Z"
        }
    .end annotation

    .line 691
    move-object/from16 v6, p0

    move/from16 v7, p4

    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v8, v0

    .line 692
    .local v8, "popped":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    move-object v9, v0

    .line 693
    .local v9, "savedState":Lkotlin/collections/ArrayDeque;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroidx/navigation/Navigator;

    .line 694
    .local v11, "navigator":Landroidx/navigation/Navigator;
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v12, v0

    .line 695
    .local v12, "receivedPop":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v0, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroidx/navigation/NavBackStackEntry;

    new-instance v14, Landroidx/navigation/NavController$executePopOperations$1;

    move-object v0, v14

    move-object v1, v12

    move-object v2, v8

    move-object/from16 v3, p0

    move/from16 v4, p4

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavController$executePopOperations$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/NavController;ZLkotlin/collections/ArrayDeque;)V

    check-cast v14, Lkotlin/jvm/functions/Function1;

    invoke-direct {v6, v11, v13, v7, v14}, Landroidx/navigation/NavController;->popBackStackInternal(Landroidx/navigation/Navigator;Landroidx/navigation/NavBackStackEntry;ZLkotlin/jvm/functions/Function1;)V

    .line 700
    iget-boolean v0, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_0

    .line 702
    nop

    .line 705
    .end local v11    # "navigator":Landroidx/navigation/Navigator;
    .end local v12    # "receivedPop":Lkotlin/jvm/internal/Ref$BooleanRef;
    :cond_1
    if-eqz v7, :cond_6

    .line 706
    if-nez p3, :cond_4

    .line 710
    sget-object v0, Landroidx/navigation/NavController$executePopOperations$2;->INSTANCE:Landroidx/navigation/NavController$executePopOperations$2;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 717
    new-instance v2, Landroidx/navigation/NavController$executePopOperations$3;

    invoke-direct {v2, v6}, Landroidx/navigation/NavController$executePopOperations$3;-><init>(Landroidx/navigation/NavController;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Lkotlin/sequences/SequencesKt;->takeWhile(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 721
    nop

    .local v0, "$this$forEach$iv":Lkotlin/sequences/Sequence;
    const/4 v2, 0x0

    .line 2871
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavDestination;

    .local v5, "destination":Landroidx/navigation/NavDestination;
    const/4 v10, 0x0

    .line 722
    .local v10, "$i$a$-forEach-NavController$executePopOperations$4":I
    iget-object v11, v6, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-virtual {v5}, Landroidx/navigation/NavDestination;->getId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/navigation/NavBackStackEntryState;

    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroidx/navigation/NavBackStackEntryState;->getId()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    nop

    .line 2871
    .end local v5    # "destination":Landroidx/navigation/NavDestination;
    .end local v10    # "$i$a$-forEach-NavController$executePopOperations$4":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 2872
    :cond_3
    goto :goto_2

    .line 706
    .end local v0    # "$this$forEach$iv":Lkotlin/sequences/Sequence;
    .end local v2    # "$i$f$forEach":I
    :cond_4
    move-object/from16 v1, p2

    .line 725
    :goto_2
    move-object v0, v9

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 726
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntryState;

    .line 730
    .local v0, "firstState":Landroidx/navigation/NavBackStackEntryState;
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v2

    invoke-virtual {v6, v2}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v2

    .line 731
    .local v2, "firstStateDestination":Landroidx/navigation/NavDestination;
    sget-object v3, Landroidx/navigation/NavController$executePopOperations$5;->INSTANCE:Landroidx/navigation/NavController$executePopOperations$5;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v3

    .line 738
    new-instance v4, Landroidx/navigation/NavController$executePopOperations$6;

    invoke-direct {v4, v6}, Landroidx/navigation/NavController$executePopOperations$6;-><init>(Landroidx/navigation/NavController;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v4}, Lkotlin/sequences/SequencesKt;->takeWhile(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v3

    .line 742
    nop

    .local v3, "$this$forEach$iv":Lkotlin/sequences/Sequence;
    const/4 v4, 0x0

    .line 2873
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/navigation/NavDestination;

    .local v11, "destination":Landroidx/navigation/NavDestination;
    const/4 v12, 0x0

    .line 742
    .local v12, "$i$a$-forEach-NavController$executePopOperations$7":I
    iget-object v13, v6, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-virtual {v11}, Landroidx/navigation/NavDestination;->getId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntryState;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2873
    .end local v11    # "destination":Landroidx/navigation/NavDestination;
    .end local v12    # "$i$a$-forEach-NavController$executePopOperations$7":I
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .line 2874
    :cond_5
    nop

    .line 744
    .end local v3    # "$this$forEach$iv":Lkotlin/sequences/Sequence;
    .end local v4    # "$i$f$forEach":I
    iget-object v3, v6, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntryState;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 747
    iget-object v3, v6, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntryState;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 705
    .end local v0    # "firstState":Landroidx/navigation/NavBackStackEntryState;
    .end local v2    # "firstStateDestination":Landroidx/navigation/NavDestination;
    :cond_6
    move-object/from16 v1, p2

    .line 751
    :cond_7
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    .line 752
    iget-boolean v0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return v0
.end method

.method private final executeRestoreState(Ljava/util/List;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z
    .locals 16
    .param p1, "entries"    # Ljava/util/List;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p4, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            ")Z"
        }
    .end annotation

    .line 2119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 2120
    .local v0, "entriesGroupedByNavigator":Ljava/util/List;
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .line 2121
    nop

    .local v1, "$this$filterNot$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 2952
    .local v2, "$i$f$filterNot":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 2953
    .local v5, "$i$f$filterNotTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    .local v8, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v9, 0x0

    .line 2123
    .local v9, "$i$a$-filterNot-NavController$executeRestoreState$1":I
    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v10

    instance-of v8, v10, Landroidx/navigation/NavGraph;

    .line 2953
    .end local v8    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v9    # "$i$a$-filterNot-NavController$executeRestoreState$1":I
    if-nez v8, :cond_0

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2954
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterNotTo":I
    check-cast v3, Ljava/util/List;

    .line 2952
    nop

    .end local v1    # "$this$filterNot$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filterNot":I
    check-cast v3, Ljava/lang/Iterable;

    .line 2125
    move-object v1, v3

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 2955
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .local v5, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v6, 0x0

    .line 2126
    .local v6, "$i$a$-forEach-NavController$executeRestoreState$2":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 2127
    .local v7, "previousEntryList":Ljava/util/List;
    if-eqz v7, :cond_2

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/navigation/NavBackStackEntry;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 2128
    .local v8, "previousNavigatorName":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2130
    move-object v9, v7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2133
    :cond_3
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    const/4 v10, 0x1

    new-array v10, v10, [Landroidx/navigation/NavBackStackEntry;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2135
    :goto_3
    nop

    .line 2955
    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v6    # "$i$a$-forEach-NavController$executeRestoreState$2":I
    .end local v7    # "previousEntryList":Ljava/util/List;
    .end local v8    # "previousNavigatorName":Ljava/lang/String;
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 2956
    :cond_4
    nop

    .line 2136
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v7, v1

    .line 2138
    .local v7, "navigated":Lkotlin/jvm/internal/Ref$BooleanRef;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ljava/util/List;

    .line 2140
    .local v15, "entryList":Ljava/util/List;
    move-object/from16 v14, p0

    iget-object v1, v14, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 2141
    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v2

    .line 2140
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v10

    .line 2139
    nop

    .line 2143
    .local v10, "navigator":Landroidx/navigation/Navigator;
    new-instance v4, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 2144
    .local v4, "lastNavigatedIndex":Lkotlin/jvm/internal/Ref$IntRef;
    new-instance v9, Landroidx/navigation/NavController$executeRestoreState$3;

    move-object v1, v9

    move-object v2, v7

    move-object/from16 v3, p1

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/navigation/NavController$executeRestoreState$3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/navigation/NavController;Landroid/os/Bundle;)V

    move-object v1, v9

    check-cast v1, Lkotlin/jvm/functions/Function1;

    move-object/from16 v9, p0

    move-object v11, v15

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object v14, v1

    invoke-direct/range {v9 .. v14}, Landroidx/navigation/NavController;->navigateInternal(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;Lkotlin/jvm/functions/Function1;)V

    .end local v4    # "lastNavigatedIndex":Lkotlin/jvm/internal/Ref$IntRef;
    .end local v10    # "navigator":Landroidx/navigation/Navigator;
    .end local v15    # "entryList":Ljava/util/List;
    goto :goto_4

    .line 2161
    :cond_5
    iget-boolean v1, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return v1
.end method

.method private final findInvalidDestinationDisplayNameInDeepLink([I)Ljava/lang/String;
    .locals 6
    .param p1, "deepLink"    # [I

    .line 1568
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    .line 1569
    .local v0, "graph":Landroidx/navigation/NavGraph;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    :goto_0
    const/4 v3, 0x0

    if-ge v1, v2, :cond_4

    .line 1570
    aget v4, p1, v1

    .line 1572
    .local v4, "destinationId":I
    if-nez v1, :cond_1

    iget-object v5, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/navigation/NavGraph;->getId()I

    move-result v5

    if-ne v5, v4, :cond_0

    iget-object v3, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    :cond_0
    check-cast v3, Landroidx/navigation/NavDestination;

    goto :goto_1

    .line 1573
    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v3

    .line 1572
    :goto_1
    if-nez v3, :cond_2

    .line 1574
    sget-object v2, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget-object v3, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1571
    :cond_2
    nop

    .line 1575
    .local v3, "node":Landroidx/navigation/NavDestination;
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-eq v1, v5, :cond_3

    .line 1577
    instance-of v5, v3, Landroidx/navigation/NavGraph;

    if-eqz v5, :cond_3

    .line 1578
    move-object v0, v3

    check-cast v0, Landroidx/navigation/NavGraph;

    .line 1581
    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v5

    instance-of v5, v5, Landroidx/navigation/NavGraph;

    if-eqz v5, :cond_3

    .line 1582
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroidx/navigation/NavGraph;

    goto :goto_2

    .line 1569
    .end local v3    # "node":Landroidx/navigation/NavDestination;
    .end local v4    # "destinationId":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1588
    .end local v1    # "i":I
    :cond_4
    return-object v3
.end method

.method private final generateRouteFilled(Ljava/lang/Object;)Ljava/lang/String;
    .locals 16
    .param p1, "route"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1655
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-static {v1}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Lkotlinx/serialization/KSerializer;)I

    move-result v1

    .line 1656
    .local v1, "id":I
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDestination;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroidx/navigation/NavController;->findDestinationComprehensive(Landroidx/navigation/NavDestination;IZ)Landroidx/navigation/NavDestination;

    move-result-object v2

    .line 1658
    .local v2, "destination":Landroidx/navigation/NavDestination;
    if-eqz v2, :cond_1

    .line 1663
    nop

    .line 1665
    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getArguments()Ljava/util/Map;

    move-result-object v3

    .local v3, "$this$mapValues$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 2927
    .local v4, "$i$f$mapValues":I
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    .local v5, "destination$iv$iv":Ljava/util/Map;
    move-object v6, v3

    .local v6, "$this$mapValuesTo$iv$iv":Ljava/util/Map;
    const/4 v7, 0x0

    .line 2928
    .local v7, "$i$f$mapValuesTo":I
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 2929
    .local v9, "$i$f$associateByTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 2930
    .local v11, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Ljava/util/Map$Entry;

    .local v12, "it$iv$iv":Ljava/util/Map$Entry;
    const/4 v13, 0x0

    .line 2928
    .local v13, "$i$a$-associateByTo-MapsKt__MapsKt$mapValuesTo$1$iv$iv":I
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    .line 2930
    .end local v12    # "it$iv$iv":Ljava/util/Map$Entry;
    .end local v13    # "$i$a$-associateByTo-MapsKt__MapsKt$mapValuesTo$1$iv$iv":I
    move-object v13, v11

    check-cast v13, Ljava/util/Map$Entry;

    .local v13, "it":Ljava/util/Map$Entry;
    const/4 v14, 0x0

    .line 1665
    .local v14, "$i$a$-mapValues-NavController$generateRouteFilled$2":I
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/navigation/NavArgument;

    invoke-virtual {v15}, Landroidx/navigation/NavArgument;->getType()Landroidx/navigation/NavType;

    move-result-object v13

    .line 2930
    .end local v13    # "it":Ljava/util/Map$Entry;
    .end local v14    # "$i$a$-mapValues-NavController$generateRouteFilled$2":I
    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2932
    .end local v11    # "element$iv$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .line 2928
    .end local v8    # "$this$associateByTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$associateByTo":I
    nop

    .line 2927
    .end local v5    # "destination$iv$iv":Ljava/util/Map;
    .end local v6    # "$this$mapValuesTo$iv$iv":Ljava/util/Map;
    .end local v7    # "$i$f$mapValuesTo":I
    nop

    .line 1662
    .end local v3    # "$this$mapValues$iv":Ljava/util/Map;
    .end local v4    # "$i$f$mapValues":I
    move-object/from16 v3, p1

    invoke-static {v3, v5}, Landroidx/navigation/serialization/RouteSerializerKt;->generateRouteWithArgs(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1658
    :cond_1
    move-object/from16 v3, p1

    const/4 v4, 0x0

    .line 1659
    .local v4, "$i$a$-requireNotNull-NavController$generateRouteFilled$1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Destination with route "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot be found in navigation graph "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1660
    iget-object v6, v0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    .line 1659
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1660
    nop

    .line 1658
    .end local v4    # "$i$a$-requireNotNull-NavController$generateRouteFilled$1":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private final getDestinationCountOnBackStack()I
    .locals 8

    .line 1051
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 2886
    .local v1, "$i$f$count":I
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 2887
    :cond_0
    const/4 v2, 0x0

    .line 2888
    .local v2, "count$iv":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .local v5, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v6, 0x0

    .line 1051
    .local v6, "$i$a$-count-NavController$destinationCountOnBackStack$1":I
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v7

    instance-of v7, v7, Landroidx/navigation/NavGraph;

    .line 2888
    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v6    # "$i$a$-count-NavController$destinationCountOnBackStack$1":I
    if-nez v7, :cond_1

    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    .line 2889
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 1051
    .end local v0    # "$this$count$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$count":I
    .end local v2    # "count$iv":I
    :goto_1
    return v2
.end method

.method private final getTopGraph(Lkotlin/collections/ArrayDeque;)Landroidx/navigation/NavGraph;
    .locals 2
    .param p1, "$this$getTopGraph"    # Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/ArrayDeque<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)",
            "Landroidx/navigation/NavGraph;"
        }
    .end annotation

    .line 1646
    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/navigation/NavDestination;

    .line 1647
    .local v0, "currentNode":Landroidx/navigation/NavDestination;
    :cond_1
    instance-of v1, v0, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavGraph;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object v1
.end method

.method private final instantiateBackStack(Lkotlin/collections/ArrayDeque;)Ljava/util/List;
    .locals 13
    .param p1, "backStackState"    # Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/ArrayDeque<",
            "Landroidx/navigation/NavBackStackEntryState;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 2167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 2168
    .local v0, "backStack":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "currentDestination":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDestination;

    :cond_1
    move-object v1, v2

    .line 2169
    if-eqz p1, :cond_4

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 2957
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/navigation/NavBackStackEntryState;

    .local v6, "state":Landroidx/navigation/NavBackStackEntryState;
    const/4 v7, 0x0

    .line 2170
    .local v7, "$i$a$-forEach-NavController$instantiateBackStack$1":I
    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {p0, v1, v8, v9}, Landroidx/navigation/NavController;->findDestinationComprehensive(Landroidx/navigation/NavDestination;IZ)Landroidx/navigation/NavDestination;

    move-result-object v8

    .line 2171
    .local v8, "node":Landroidx/navigation/NavDestination;
    if-eqz v8, :cond_2

    .line 2176
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    iget-object v10, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v11

    iget-object v12, p0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    invoke-virtual {v6, v10, v8, v11, v12}, Landroidx/navigation/NavBackStackEntryState;->instantiate(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2177
    move-object v1, v8

    .line 2178
    nop

    .line 2957
    .end local v6    # "state":Landroidx/navigation/NavBackStackEntryState;
    .end local v7    # "$i$a$-forEach-NavController$instantiateBackStack$1":I
    .end local v8    # "node":Landroidx/navigation/NavDestination;
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 2171
    .restart local v5    # "element$iv":Ljava/lang/Object;
    .restart local v6    # "state":Landroidx/navigation/NavBackStackEntryState;
    .restart local v7    # "$i$a$-forEach-NavController$instantiateBackStack$1":I
    .restart local v8    # "node":Landroidx/navigation/NavDestination;
    :cond_2
    const/4 v4, 0x0

    .line 2172
    .local v4, "$i$a$-checkNotNull-NavController$instantiateBackStack$1$1":I
    sget-object v9, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget-object v10, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 2173
    .local v9, "dest":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Restore State failed: destination "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cannot be found from the current destination "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 2174
    nop

    .line 2173
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2174
    nop

    .line 2171
    .end local v4    # "$i$a$-checkNotNull-NavController$instantiateBackStack$1$1":I
    .end local v9    # "dest":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2958
    .end local v5    # "element$iv":Ljava/lang/Object;
    .end local v6    # "state":Landroidx/navigation/NavBackStackEntryState;
    .end local v7    # "$i$a$-forEach-NavController$instantiateBackStack$1":I
    .end local v8    # "node":Landroidx/navigation/NavDestination;
    :cond_3
    nop

    .line 2179
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    :cond_4
    return-object v0
.end method

.method private final launchSingleTopInternal(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Z
    .locals 17
    .param p1, "node"    # Landroidx/navigation/NavDestination;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 2017
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object v2

    .line 2018
    .local v2, "currentBackStackEntry":Landroidx/navigation/NavBackStackEntry;
    iget-object v3, v0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    check-cast v3, Ljava/util/List;

    .local v3, "$this$indexOfLast$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 2937
    .local v4, "$i$f$indexOfLast":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .line 2938
    .local v5, "iterator$iv":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_2

    .line 2939
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/navigation/NavBackStackEntry;

    .local v6, "it":Landroidx/navigation/NavBackStackEntry;
    const/4 v10, 0x0

    .line 2018
    .local v10, "$i$a$-indexOfLast-NavController$launchSingleTopInternal$nodeIndex$1":I
    invoke-virtual {v6}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v11

    if-ne v11, v1, :cond_1

    move v6, v8

    goto :goto_0

    :cond_1
    move v6, v9

    .line 2939
    .end local v6    # "it":Landroidx/navigation/NavBackStackEntry;
    .end local v10    # "$i$a$-indexOfLast-NavController$launchSingleTopInternal$nodeIndex$1":I
    :goto_0
    if-eqz v6, :cond_0

    .line 2940
    invoke-interface {v5}, Ljava/util/ListIterator;->nextIndex()I

    move-result v6

    goto :goto_1

    .line 2943
    :cond_2
    move v6, v7

    .line 2018
    .end local v3    # "$this$indexOfLast$iv":Ljava/util/List;
    .end local v4    # "$i$f$indexOfLast":I
    .end local v5    # "iterator$iv":Ljava/util/ListIterator;
    :goto_1
    move v3, v6

    .line 2020
    .local v3, "nodeIndex":I
    if-ne v3, v7, :cond_3

    return v9

    .line 2021
    :cond_3
    instance-of v4, v1, Landroidx/navigation/NavGraph;

    if-eqz v4, :cond_6

    .line 2023
    sget-object v4, Landroidx/navigation/NavGraph;->Companion:Landroidx/navigation/NavGraph$Companion;

    move-object v5, v1

    check-cast v5, Landroidx/navigation/NavGraph;

    invoke-virtual {v4, v5}, Landroidx/navigation/NavGraph$Companion;->childHierarchy(Landroidx/navigation/NavGraph;)Lkotlin/sequences/Sequence;

    move-result-object v4

    sget-object v5, Landroidx/navigation/NavController$launchSingleTopInternal$childHierarchyId$1;->INSTANCE:Landroidx/navigation/NavController$launchSingleTopInternal$childHierarchyId$1;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v5}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v4

    invoke-static {v4}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v4

    .line 2026
    .local v4, "childHierarchyId":Ljava/util/List;
    iget-object v5, v0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_4

    return v9

    .line 2027
    :cond_4
    iget-object v5, v0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    iget-object v6, v0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lkotlin/collections/ArrayDeque;->subList(II)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 2944
    .local v6, "$i$f$map":I
    new-instance v7, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v5, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v5

    .local v10, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 2945
    .local v11, "$i$f$mapTo":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 2946
    .local v13, "item$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Landroidx/navigation/NavBackStackEntry;

    .local v14, "it":Landroidx/navigation/NavBackStackEntry;
    const/4 v15, 0x0

    .line 2027
    .local v15, "$i$a$-map-NavController$launchSingleTopInternal$backQueueId$1":I
    invoke-virtual {v14}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/navigation/NavDestination;->getId()I

    move-result v14

    .end local v14    # "it":Landroidx/navigation/NavBackStackEntry;
    .end local v15    # "$i$a$-map-NavController$launchSingleTopInternal$backQueueId$1":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 2946
    invoke-interface {v7, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2947
    .end local v13    # "item$iv$iv":Ljava/lang/Object;
    :cond_5
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapTo":I
    check-cast v7, Ljava/util/List;

    .line 2944
    nop

    .line 2027
    .end local v5    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$map":I
    move-object v5, v7

    .line 2029
    .local v5, "backQueueId":Ljava/util/List;
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    return v9

    .line 2030
    .end local v4    # "childHierarchyId":Ljava/util/List;
    .end local v5    # "backQueueId":Ljava/util/List;
    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v5

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getId()I

    move-result v4

    if-ne v5, v4, :cond_7

    move v4, v8

    goto :goto_3

    :cond_7
    move v4, v9

    :goto_3
    if-nez v4, :cond_8

    .line 2031
    return v9

    .line 2034
    :cond_8
    new-instance v4, Lkotlin/collections/ArrayDeque;

    invoke-direct {v4}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 2036
    .local v4, "tempBackQueue":Lkotlin/collections/ArrayDeque;
    :goto_4
    iget-object v5, v0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-lt v5, v3, :cond_9

    .line 2037
    iget-object v5, v0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 2038
    .local v5, "oldEntry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v0, v5}, Landroidx/navigation/NavController;->unlinkChildFromParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;

    .line 2039
    new-instance v6, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v7

    move-object/from16 v9, p2

    invoke-virtual {v7, v9}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroidx/navigation/NavBackStackEntry;-><init>(Landroidx/navigation/NavBackStackEntry;Landroid/os/Bundle;)V

    .line 2040
    .local v6, "newEntry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v4, v6}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .end local v5    # "oldEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v6    # "newEntry":Landroidx/navigation/NavBackStackEntry;
    goto :goto_4

    .line 2044
    :cond_9
    move-object/from16 v9, p2

    move-object v5, v4

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 2948
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/navigation/NavBackStackEntry;

    .local v11, "newEntry":Landroidx/navigation/NavBackStackEntry;
    const/4 v12, 0x0

    .line 2045
    .local v12, "$i$a$-forEach-NavController$launchSingleTopInternal$1":I
    invoke-virtual {v11}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v13

    .line 2046
    .local v13, "parent":Landroidx/navigation/NavGraph;
    if-eqz v13, :cond_a

    .line 2047
    invoke-virtual {v13}, Landroidx/navigation/NavGraph;->getId()I

    move-result v14

    invoke-virtual {v0, v14}, Landroidx/navigation/NavController;->getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v14

    .line 2048
    .local v14, "newParent":Landroidx/navigation/NavBackStackEntry;
    invoke-direct {v0, v11, v14}, Landroidx/navigation/NavController;->linkChildToParent(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    .line 2050
    .end local v14    # "newParent":Landroidx/navigation/NavBackStackEntry;
    :cond_a
    iget-object v14, v0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v14, v11}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 2051
    nop

    .line 2948
    .end local v11    # "newEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v12    # "$i$a$-forEach-NavController$launchSingleTopInternal$1":I
    .end local v13    # "parent":Landroidx/navigation/NavGraph;
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_5

    .line 2949
    :cond_b
    nop

    .line 2054
    .end local v5    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    move-object v5, v4

    check-cast v5, Ljava/lang/Iterable;

    .restart local v5    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 2950
    .restart local v6    # "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .restart local v10    # "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Landroidx/navigation/NavBackStackEntry;

    .restart local v11    # "newEntry":Landroidx/navigation/NavBackStackEntry;
    const/4 v12, 0x0

    .line 2056
    .local v12, "$i$a$-forEach-NavController$launchSingleTopInternal$2":I
    iget-object v13, v0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v11}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v13

    .line 2055
    nop

    .line 2057
    .local v13, "navigator":Landroidx/navigation/Navigator;
    invoke-virtual {v13, v11}, Landroidx/navigation/Navigator;->onLaunchSingleTop(Landroidx/navigation/NavBackStackEntry;)V

    .line 2058
    nop

    .line 2950
    .end local v11    # "newEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v12    # "$i$a$-forEach-NavController$launchSingleTopInternal$2":I
    .end local v13    # "navigator":Landroidx/navigation/Navigator;
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_6

    .line 2951
    :cond_c
    nop

    .line 2060
    .end local v5    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    return v8
.end method

.method private static final lifecycleObserver$lambda$2(Landroidx/navigation/NavController;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p0, "this$0"    # Landroidx/navigation/NavController;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->getTargetState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p1

    iput-object p1, p0, Landroidx/navigation/NavController;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 195
    iget-object p1, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-eqz p1, :cond_0

    .line 196
    iget-object p1, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 197
    .local v0, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v0, p2}, Landroidx/navigation/NavBackStackEntry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .end local v0    # "entry":Landroidx/navigation/NavBackStackEntry;
    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method private final linkChildToParent(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V
    .locals 3
    .param p1, "child"    # Landroidx/navigation/NavBackStackEntry;
    .param p2, "parent"    # Landroidx/navigation/NavBackStackEntry;

    .line 157
    iget-object v0, p0, Landroidx/navigation/NavController;->childToParentEntries:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 162
    return-void
.end method

.method private final navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 21
    .param p1, "node"    # Landroidx/navigation/NavDestination;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p4, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    .line 1945
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    iget-object v0, v6, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 2933
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v5, v3

    check-cast v5, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .local v5, "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    const/4 v8, 0x0

    .line 1945
    .local v8, "$i$a$-forEach-NavController$navigate$4":I
    invoke-virtual {v5, v4}, Landroidx/navigation/NavController$NavControllerNavigatorState;->setNavigating(Z)V

    .line 2933
    .end local v5    # "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v8    # "$i$a$-forEach-NavController$navigate$4":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 2934
    :cond_0
    nop

    .line 1946
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    const/4 v0, 0x0

    .line 1947
    .local v0, "popped":Z
    const/4 v1, 0x0

    .line 1948
    .local v1, "launchSingleTop":Z
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move-object v8, v2

    .line 1949
    .local v8, "navigated":Lkotlin/jvm/internal/Ref$BooleanRef;
    if-eqz v7, :cond_4

    .line 1950
    nop

    .line 1951
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getPopUpToRoute()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1953
    nop

    .line 1954
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getPopUpToRoute()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1955
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v3

    .line 1956
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->shouldPopUpToSaveState()Z

    move-result v5

    .line 1953
    invoke-direct {v6, v2, v3, v5}, Landroidx/navigation/NavController;->popBackStackInternal(Ljava/lang/String;ZZ)Z

    move-result v2

    .line 1952
    move v0, v2

    move v9, v0

    goto :goto_1

    .line 1958
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getPopUpToRouteClass()Lkotlin/reflect/KClass;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1960
    nop

    .line 1961
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getPopUpToRouteClass()Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v2}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Lkotlinx/serialization/KSerializer;)I

    move-result v2

    .line 1962
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v3

    .line 1963
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->shouldPopUpToSaveState()Z

    move-result v5

    .line 1960
    invoke-direct {v6, v2, v3, v5}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    move-result v2

    .line 1959
    move v0, v2

    move v9, v0

    goto :goto_1

    .line 1965
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getPopUpToRouteObject()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1967
    nop

    .line 1968
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getPopUpToRouteObject()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1969
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v3

    .line 1970
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->shouldPopUpToSaveState()Z

    move-result v5

    .line 1967
    invoke-direct {v6, v2, v3, v5}, Landroidx/navigation/NavController;->popBackStackInternal(Ljava/lang/Object;ZZ)Z

    move-result v2

    .line 1966
    move v0, v2

    move v9, v0

    goto :goto_1

    .line 1972
    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getPopUpToId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 1974
    nop

    .line 1975
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->getPopUpToId()I

    move-result v2

    .line 1976
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v3

    .line 1977
    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->shouldPopUpToSaveState()Z

    move-result v5

    .line 1974
    invoke-direct {v6, v2, v3, v5}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    move-result v2

    .line 1973
    move v0, v2

    move v9, v0

    goto :goto_1

    .line 1981
    :cond_4
    move v9, v0

    .end local v0    # "popped":Z
    .local v9, "popped":Z
    :goto_1
    invoke-virtual/range {p1 .. p2}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 1983
    .local v5, "finalArgs":Landroid/os/Bundle;
    const/4 v3, 0x0

    if-eqz v7, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->shouldRestoreState()Z

    move-result v0

    if-ne v0, v4, :cond_5

    move v0, v4

    goto :goto_2

    :cond_5
    move v0, v3

    :goto_2
    if-eqz v0, :cond_6

    iget-object v0, v6, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1984
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    move-object/from16 v2, p4

    invoke-direct {v6, v0, v5, v7, v2}, Landroidx/navigation/NavController;->restoreStateInternal(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z

    move-result v0

    iput-boolean v0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move-object/from16 v11, p1

    move v13, v3

    move-object v14, v5

    goto/16 :goto_6

    .line 1983
    :cond_6
    move-object/from16 v2, p4

    .line 1987
    if-eqz v7, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroidx/navigation/NavOptions;->shouldLaunchSingleTop()Z

    move-result v0

    if-ne v0, v4, :cond_7

    move v0, v4

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_3
    if-eqz v0, :cond_8

    invoke-direct/range {p0 .. p2}, Landroidx/navigation/NavController;->launchSingleTopInternal(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    move v4, v3

    .line 1986
    :goto_4
    move/from16 v20, v4

    .line 1989
    .end local v1    # "launchSingleTop":Z
    .local v20, "launchSingleTop":Z
    if-nez v20, :cond_9

    .line 1992
    sget-object v10, Landroidx/navigation/NavBackStackEntry;->Companion:Landroidx/navigation/NavBackStackEntry$Companion;

    .line 1993
    iget-object v11, v6, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    .line 1994
    nop

    .line 1995
    nop

    .line 1996
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v14

    .line 1997
    iget-object v0, v6, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    move-object v15, v0

    check-cast v15, Landroidx/navigation/NavViewModelStoreProvider;

    .line 1992
    const/16 v18, 0x60

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v12, p1

    move-object v13, v5

    invoke-static/range {v10 .. v19}, Landroidx/navigation/NavBackStackEntry$Companion;->create$default(Landroidx/navigation/NavBackStackEntry$Companion;Landroid/content/Context;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavViewModelStoreProvider;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    .line 1991
    move-object v10, v0

    .line 2000
    .local v10, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    iget-object v0, v6, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v1

    .line 1999
    nop

    .line 2001
    .local v1, "navigator":Landroidx/navigation/Navigator;
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v0, Landroidx/navigation/NavController$navigate$5;

    move-object/from16 v11, p1

    invoke-direct {v0, v8, v6, v11, v5}, Landroidx/navigation/NavController$navigate$5;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, p0

    move-object v2, v4

    move v13, v3

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v14, v5

    .end local v5    # "finalArgs":Landroid/os/Bundle;
    .local v14, "finalArgs":Landroid/os/Bundle;
    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavController;->navigateInternal(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;Lkotlin/jvm/functions/Function1;)V

    goto :goto_5

    .line 1989
    .end local v1    # "navigator":Landroidx/navigation/Navigator;
    .end local v10    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    .end local v14    # "finalArgs":Landroid/os/Bundle;
    .restart local v5    # "finalArgs":Landroid/os/Bundle;
    :cond_9
    move-object/from16 v11, p1

    move v13, v3

    move-object v14, v5

    .line 2007
    .end local v5    # "finalArgs":Landroid/os/Bundle;
    .restart local v14    # "finalArgs":Landroid/os/Bundle;
    :goto_5
    move/from16 v1, v20

    .end local v20    # "launchSingleTop":Z
    .local v1, "launchSingleTop":Z
    :goto_6
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    .line 2008
    iget-object v0, v6, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 2935
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .local v5, "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    const/4 v10, 0x0

    .line 2008
    .local v10, "$i$a$-forEach-NavController$navigate$6":I
    invoke-virtual {v5, v13}, Landroidx/navigation/NavController$NavControllerNavigatorState;->setNavigating(Z)V

    .line 2935
    .end local v5    # "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v10    # "$i$a$-forEach-NavController$navigate$6":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_7

    .line 2936
    :cond_a
    nop

    .line 2009
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    if-nez v9, :cond_c

    iget-boolean v0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_c

    if-eqz v1, :cond_b

    goto :goto_8

    .line 2012
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->updateBackStackLifecycle$navigation_runtime_release()V

    goto :goto_9

    .line 2010
    :cond_c
    :goto_8
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    .line 2014
    :goto_9
    return-void
.end method

.method public static synthetic navigate$default(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V
    .locals 1

    .line 2416
    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 2418
    move-object p2, v0

    .line 2416
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 2419
    move-object p3, v0

    .line 2416
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavController;->navigate(Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: navigate"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V
    .locals 1

    .line 2370
    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 2372
    move-object p2, v0

    .line 2370
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 2373
    move-object p3, v0

    .line 2370
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavController;->navigate(Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: navigate"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final navigateInternal(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "$this$navigateInternal"    # Landroidx/navigation/Navigator;
    .param p2, "entries"    # Ljava/util/List;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p4, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;
    .param p5, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 271
    iput-object p5, p0, Landroidx/navigation/NavController;->addToBackStackHandler:Lkotlin/jvm/functions/Function1;

    .line 272
    invoke-virtual {p1, p2, p3, p4}, Landroidx/navigation/Navigator;->navigate(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/navigation/NavController;->addToBackStackHandler:Lkotlin/jvm/functions/Function1;

    .line 274
    return-void
.end method

.method static synthetic navigateInternal$default(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 6

    .line 265
    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 269
    sget-object p5, Landroidx/navigation/NavController$navigateInternal$1;->INSTANCE:Landroidx/navigation/NavController$navigateInternal$1;

    check-cast p5, Lkotlin/jvm/functions/Function1;

    move-object v5, p5

    goto :goto_0

    .line 265
    :cond_0
    move-object v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroidx/navigation/NavController;->navigateInternal(Landroidx/navigation/Navigator;Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: navigateInternal"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final onGraphCreated(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "startDestinationArgs"    # Landroid/os/Bundle;

    .line 1311
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/navigation/NavController;->navigatorStateToRestore:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .local v1, "navigatorStateToRestore":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 1313
    .local v2, "$i$a$-let-NavController$onGraphCreated$1":I
    const-string v3, "android-support-nav:controller:navigatorState:names"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1312
    nop

    .line 1314
    .local v3, "navigatorNames":Ljava/util/ArrayList;
    if-eqz v3, :cond_1

    .line 1315
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1316
    .local v5, "name":Ljava/lang/String;
    iget-object v6, v0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    const-string v7, "name"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v6

    .line 1317
    .local v6, "navigator":Landroidx/navigation/Navigator;
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 1318
    .local v7, "bundle":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 1319
    invoke-virtual {v6, v7}, Landroidx/navigation/Navigator;->onRestoreState(Landroid/os/Bundle;)V

    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "navigator":Landroidx/navigation/Navigator;
    .end local v7    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 1323
    :cond_1
    nop

    .line 1311
    .end local v1    # "navigatorStateToRestore":Landroid/os/Bundle;
    .end local v2    # "$i$a$-let-NavController$onGraphCreated$1":I
    .end local v3    # "navigatorNames":Ljava/util/ArrayList;
    nop

    .line 1324
    :cond_2
    iget-object v1, v0, Landroidx/navigation/NavController;->backStackToRestore:[Landroid/os/Parcelable;

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .local v1, "backStackToRestore":[Landroid/os/Parcelable;
    const/4 v4, 0x0

    .line 1325
    .local v4, "$i$a$-let-NavController$onGraphCreated$2":I
    array-length v5, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_6

    aget-object v7, v1, v6

    .line 1326
    .local v7, "parcelable":Landroid/os/Parcelable;
    const-string v8, "null cannot be cast to non-null type androidx.navigation.NavBackStackEntryState"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v7

    check-cast v8, Landroidx/navigation/NavBackStackEntryState;

    .line 1327
    .local v8, "state":Landroidx/navigation/NavBackStackEntryState;
    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v9

    invoke-virtual {v0, v9}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v9

    .line 1328
    .local v9, "node":Landroidx/navigation/NavDestination;
    if-eqz v9, :cond_5

    .line 1335
    iget-object v10, v0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v11

    iget-object v12, v0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    invoke-virtual {v8, v10, v9, v11, v12}, Landroidx/navigation/NavBackStackEntryState;->instantiate(Landroid/content/Context;Landroidx/navigation/NavDestination;Landroidx/lifecycle/Lifecycle$State;Landroidx/navigation/NavControllerViewModel;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v10

    .line 1336
    .local v10, "entry":Landroidx/navigation/NavBackStackEntry;
    iget-object v11, v0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v9}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v11

    .line 1338
    .local v11, "navigator":Landroidx/navigation/Navigator;
    iget-object v12, v0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    .local v12, "$this$getOrPut$iv":Ljava/util/Map;
    const/4 v13, 0x0

    .line 2908
    .local v13, "$i$f$getOrPut":I
    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 2909
    .local v14, "value$iv":Ljava/lang/Object;
    if-nez v14, :cond_3

    .line 2910
    const/4 v15, 0x0

    .line 1338
    .local v15, "$i$a$-getOrPut-NavController$onGraphCreated$2$navigatorBackStack$1":I
    new-instance v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-direct {v2, v0, v11}, Landroidx/navigation/NavController$NavControllerNavigatorState;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V

    .line 2910
    .end local v15    # "$i$a$-getOrPut-NavController$onGraphCreated$2$navigatorBackStack$1":I
    nop

    .line 2911
    .local v2, "answer$iv":Ljava/lang/Object;
    invoke-interface {v12, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2912
    nop

    .end local v2    # "answer$iv":Ljava/lang/Object;
    goto :goto_2

    .line 2914
    :cond_3
    move-object v2, v14

    .line 2909
    :goto_2
    nop

    .line 1338
    .end local v12    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v13    # "$i$f$getOrPut":I
    .end local v14    # "value$iv":Ljava/lang/Object;
    check-cast v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 1337
    nop

    .line 1339
    .local v2, "navigatorBackStack":Landroidx/navigation/NavController$NavControllerNavigatorState;
    iget-object v12, v0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v12, v10}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1340
    invoke-virtual {v2, v10}, Landroidx/navigation/NavController$NavControllerNavigatorState;->addInternal(Landroidx/navigation/NavBackStackEntry;)V

    .line 1341
    invoke-virtual {v10}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v12

    .line 1342
    .local v12, "parent":Landroidx/navigation/NavGraph;
    if-eqz v12, :cond_4

    .line 1343
    invoke-virtual {v12}, Landroidx/navigation/NavGraph;->getId()I

    move-result v13

    invoke-virtual {v0, v13}, Landroidx/navigation/NavController;->getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v13

    invoke-direct {v0, v10, v13}, Landroidx/navigation/NavController;->linkChildToParent(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavBackStackEntry;)V

    .line 1325
    .end local v2    # "navigatorBackStack":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v7    # "parcelable":Landroid/os/Parcelable;
    .end local v8    # "state":Landroidx/navigation/NavBackStackEntryState;
    .end local v9    # "node":Landroidx/navigation/NavDestination;
    .end local v10    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v11    # "navigator":Landroidx/navigation/Navigator;
    .end local v12    # "parent":Landroidx/navigation/NavGraph;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1329
    .restart local v7    # "parcelable":Landroid/os/Parcelable;
    .restart local v8    # "state":Landroidx/navigation/NavBackStackEntryState;
    .restart local v9    # "node":Landroidx/navigation/NavDestination;
    :cond_5
    sget-object v2, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget-object v3, v0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroidx/navigation/NavBackStackEntryState;->getDestinationId()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1330
    .local v2, "dest":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 1331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restoring the Navigation back stack failed: destination "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cannot be found from the current destination "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1332
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v6

    .line 1331
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1330
    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1346
    .end local v2    # "dest":Ljava/lang/String;
    .end local v7    # "parcelable":Landroid/os/Parcelable;
    .end local v8    # "state":Landroidx/navigation/NavBackStackEntryState;
    .end local v9    # "node":Landroidx/navigation/NavDestination;
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    .line 1347
    iput-object v3, v0, Landroidx/navigation/NavController;->backStackToRestore:[Landroid/os/Parcelable;

    .line 1348
    nop

    .line 1324
    .end local v1    # "backStackToRestore":[Landroid/os/Parcelable;
    .end local v4    # "$i$a$-let-NavController$onGraphCreated$2":I
    nop

    .line 1350
    :cond_7
    iget-object v1, v0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v1}, Landroidx/navigation/NavigatorProvider;->getNavigators()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1351
    nop

    .local v1, "$this$filterNot$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 2915
    .local v2, "$i$f$filterNot":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 2916
    .local v6, "$i$f$filterNotTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/navigation/Navigator;

    .local v9, "it":Landroidx/navigation/Navigator;
    const/4 v10, 0x0

    .line 1351
    .local v10, "$i$a$-filterNot-NavController$onGraphCreated$3":I
    invoke-virtual {v9}, Landroidx/navigation/Navigator;->isAttached()Z

    move-result v9

    .line 2916
    .end local v9    # "it":Landroidx/navigation/Navigator;
    .end local v10    # "$i$a$-filterNot-NavController$onGraphCreated$3":I
    if-nez v9, :cond_8

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2917
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_9
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterNotTo":I
    check-cast v4, Ljava/util/List;

    .line 2915
    nop

    .end local v1    # "$this$filterNot$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filterNot":I
    check-cast v4, Ljava/lang/Iterable;

    .line 1352
    move-object v1, v4

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 2918
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Landroidx/navigation/Navigator;

    .local v6, "navigator":Landroidx/navigation/Navigator;
    const/4 v7, 0x0

    .line 1354
    .local v7, "$i$a$-forEach-NavController$onGraphCreated$4":I
    iget-object v8, v0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    .local v8, "$this$getOrPut$iv":Ljava/util/Map;
    const/4 v9, 0x0

    .line 2919
    .local v9, "$i$f$getOrPut":I
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 2920
    .local v10, "value$iv":Ljava/lang/Object;
    if-nez v10, :cond_a

    .line 2921
    const/4 v11, 0x0

    .line 1354
    .local v11, "$i$a$-getOrPut-NavController$onGraphCreated$4$navigatorBackStack$1":I
    new-instance v12, Landroidx/navigation/NavController$NavControllerNavigatorState;

    invoke-direct {v12, v0, v6}, Landroidx/navigation/NavController$NavControllerNavigatorState;-><init>(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;)V

    .line 2921
    .end local v11    # "$i$a$-getOrPut-NavController$onGraphCreated$4$navigatorBackStack$1":I
    move-object v11, v12

    .line 2922
    .local v11, "answer$iv":Ljava/lang/Object;
    invoke-interface {v8, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2923
    nop

    .end local v11    # "answer$iv":Ljava/lang/Object;
    goto :goto_5

    .line 2925
    :cond_a
    move-object v11, v10

    .line 2920
    :goto_5
    nop

    .line 1354
    .end local v8    # "$this$getOrPut$iv":Ljava/util/Map;
    .end local v9    # "$i$f$getOrPut":I
    .end local v10    # "value$iv":Ljava/lang/Object;
    check-cast v11, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 1353
    move-object v8, v11

    .line 1355
    .local v8, "navigatorBackStack":Landroidx/navigation/NavController$NavControllerNavigatorState;
    move-object v9, v8

    check-cast v9, Landroidx/navigation/NavigatorState;

    invoke-virtual {v6, v9}, Landroidx/navigation/Navigator;->onAttach(Landroidx/navigation/NavigatorState;)V

    .line 1356
    nop

    .line 2918
    .end local v6    # "navigator":Landroidx/navigation/Navigator;
    .end local v7    # "$i$a$-forEach-NavController$onGraphCreated$4":I
    .end local v8    # "navigatorBackStack":Landroidx/navigation/NavController$NavControllerNavigatorState;
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_4

    .line 2926
    :cond_b
    nop

    .line 1357
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    iget-object v1, v0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_e

    iget-object v1, v0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1359
    iget-boolean v1, v0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    if-nez v1, :cond_c

    iget-object v1, v0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_c

    iget-object v1, v0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/NavController;->handleDeepLink(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v2, 0x1

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    .line 1358
    :goto_6
    move v1, v2

    .line 1360
    .local v1, "deepLinked":Z
    if-nez v1, :cond_d

    .line 1363
    iget-object v2, v0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroidx/navigation/NavDestination;

    move-object/from16 v4, p1

    invoke-direct {v0, v2, v4, v3, v3}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .end local v1    # "deepLinked":Z
    goto :goto_7

    .line 1360
    .restart local v1    # "deepLinked":Z
    :cond_d
    move-object/from16 v4, p1

    goto :goto_7

    .line 1357
    .end local v1    # "deepLinked":Z
    :cond_e
    move-object/from16 v4, p1

    .line 1366
    invoke-direct/range {p0 .. p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    .line 1368
    :goto_7
    return-void
.end method

.method public static synthetic popBackStack$default(Landroidx/navigation/NavController;Ljava/lang/Object;ZZILjava/lang/Object;)Z
    .locals 0

    .line 561
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 564
    const/4 p3, 0x0

    .line 561
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popBackStack(Ljava/lang/Object;ZZ)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: popBackStack"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic popBackStack$default(Landroidx/navigation/NavController;Ljava/lang/String;ZZILjava/lang/Object;)Z
    .locals 0

    .line 508
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 511
    const/4 p3, 0x0

    .line 508
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popBackStack(Ljava/lang/String;ZZ)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: popBackStack"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic popBackStack$default(Landroidx/navigation/NavController;ZZILjava/lang/Object;)Z
    .locals 4
    .param p0, "$this"    # Landroidx/navigation/NavController;
    .param p1, "inclusive"    # Z
    .param p2, "saveState"    # Z

    .line 534
    if-nez p4, :cond_2

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 536
    const/4 p2, 0x0

    .line 534
    :cond_0
    const/4 p3, 0x0

    .line 538
    .local p3, "$i$f$popBackStack":I
    const/4 p4, 0x6

    const-string v0, "T"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string p4, "kotlinx.serialization.serializer.simple"

    invoke-static {p4}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    const/4 p4, 0x0

    invoke-static {p4}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object p4

    invoke-static {p4}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Lkotlinx/serialization/KSerializer;)I

    move-result p4

    .line 539
    .local p4, "id":I
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p4, v2}, Landroidx/navigation/NavController;->findDestinationComprehensive(Landroidx/navigation/NavDestination;IZ)Landroidx/navigation/NavDestination;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 543
    invoke-virtual {p0, p4, p1, p2}, Landroidx/navigation/NavController;->popBackStack(IZZ)Z

    move-result v0

    return v0

    .line 539
    :cond_1
    const/4 v1, 0x0

    .line 540
    .local v1, "$i$a$-requireNotNull-NavController$popBackStack$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destination with route "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cannot be found in navigation graph "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 541
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v2

    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 541
    nop

    .line 539
    .end local v1    # "$i$a$-requireNotNull-NavController$popBackStack$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 534
    .end local p3    # "$i$f$popBackStack":I
    .end local p4    # "id":I
    :cond_2
    new-instance p3, Ljava/lang/UnsupportedOperationException;

    const-string p4, "Super calls with default arguments not supported in this target, function: popBackStack"

    invoke-direct {p3, p4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private final popBackStackInternal(Landroidx/navigation/Navigator;Landroidx/navigation/NavBackStackEntry;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "$this$popBackStackInternal"    # Landroidx/navigation/Navigator;
    .param p2, "popUpTo"    # Landroidx/navigation/NavBackStackEntry;
    .param p3, "saveState"    # Z
    .param p4, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;",
            "Landroidx/navigation/NavBackStackEntry;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 285
    iput-object p4, p0, Landroidx/navigation/NavController;->popFromBackStackHandler:Lkotlin/jvm/functions/Function1;

    .line 286
    invoke-virtual {p1, p2, p3}, Landroidx/navigation/Navigator;->popBackStack(Landroidx/navigation/NavBackStackEntry;Z)V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/navigation/NavController;->popFromBackStackHandler:Lkotlin/jvm/functions/Function1;

    .line 288
    return-void
.end method

.method private final popBackStackInternal(IZZ)Z
    .locals 7
    .param p1, "destinationId"    # I
    .param p2, "inclusive"    # Z
    .param p3, "saveState"    # Z

    .line 590
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 592
    return v1

    .line 594
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 595
    .local v0, "popOperations":Ljava/util/List;
    iget-object v2, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 596
    .local v2, "iterator":Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 597
    .local v3, "foundDestination":Landroidx/navigation/NavDestination;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 598
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    .line 599
    .local v4, "destination":Landroidx/navigation/NavDestination;
    iget-object v5, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v5

    .line 600
    .local v5, "navigator":Landroidx/navigation/Navigator;
    if-nez p2, :cond_2

    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getId()I

    move-result v6

    if-eq v6, p1, :cond_3

    .line 601
    :cond_2
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    :cond_3
    invoke-virtual {v4}, Landroidx/navigation/NavDestination;->getId()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 604
    move-object v3, v4

    .line 605
    nop

    .line 608
    .end local v4    # "destination":Landroidx/navigation/NavDestination;
    .end local v5    # "navigator":Landroidx/navigation/Navigator;
    :cond_4
    if-nez v3, :cond_5

    .line 611
    sget-object v4, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget-object v5, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v4, v5, p1}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 613
    .local v4, "destinationName":Ljava/lang/String;
    nop

    .line 614
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring popBackStack to destination "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as it was not found on the current back stack"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 612
    const-string v6, "NavController"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return v1

    .line 619
    .end local v4    # "destinationName":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v0, v3, p2, p3}, Landroidx/navigation/NavController;->executePopOperations(Ljava/util/List;Landroidx/navigation/NavDestination;ZZ)Z

    move-result v1

    return v1
.end method

.method private final popBackStackInternal(Ljava/lang/Object;ZZ)Z
    .locals 2
    .param p1, "route"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z
    .param p3, "saveState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;ZZ)Z"
        }
    .end annotation

    .line 629
    invoke-direct {p0, p1}, Landroidx/navigation/NavController;->generateRouteFilled(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, "finalRoute":Ljava/lang/String;
    invoke-direct {p0, v0, p2, p3}, Landroidx/navigation/NavController;->popBackStackInternal(Ljava/lang/String;ZZ)Z

    move-result v1

    return v1
.end method

.method private final popBackStackInternal(Ljava/lang/String;ZZ)Z
    .locals 12
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "inclusive"    # Z
    .param p3, "saveState"    # Z

    .line 651
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 653
    return v1

    .line 656
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 670
    .local v0, "popOperations":Ljava/util/List;
    nop

    .line 658
    iget-object v2, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    check-cast v2, Ljava/util/List;

    .line 659
    nop

    .local v2, "$this$lastOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 2865
    .local v3, "$i$f$lastOrNull":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 2866
    .local v4, "iterator$iv":Ljava/util/ListIterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 2867
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    .line 2868
    .local v5, "element$iv":Ljava/lang/Object;
    move-object v7, v5

    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .local v7, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v8, 0x0

    .line 660
    .local v8, "$i$a$-lastOrNull-NavController$popBackStackInternal$foundDestination$1":I
    invoke-virtual {v7}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v9

    invoke-virtual {v7}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v9, p1, v10}, Landroidx/navigation/NavDestination;->hasRoute(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v9

    .line 661
    .local v9, "hasRoute":Z
    if-nez p2, :cond_2

    if-nez v9, :cond_3

    .line 663
    :cond_2
    iget-object v10, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 664
    invoke-virtual {v7}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v11

    .line 663
    invoke-virtual {v10, v11}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v10

    .line 662
    nop

    .line 666
    .local v10, "navigator":Landroidx/navigation/Navigator;
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    .end local v10    # "navigator":Landroidx/navigation/Navigator;
    :cond_3
    nop

    .line 2868
    .end local v7    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v8    # "$i$a$-lastOrNull-NavController$popBackStackInternal$foundDestination$1":I
    .end local v9    # "hasRoute":Z
    if-eqz v9, :cond_1

    goto :goto_0

    .line 2870
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_4
    move-object v5, v6

    .line 659
    .end local v2    # "$this$lastOrNull$iv":Ljava/util/List;
    .end local v3    # "$i$f$lastOrNull":I
    .end local v4    # "iterator$iv":Ljava/util/ListIterator;
    :goto_0
    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 670
    if-eqz v5, :cond_5

    .line 659
    nop

    .line 670
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v6

    .line 657
    :cond_5
    move-object v2, v6

    .line 672
    .local v2, "foundDestination":Landroidx/navigation/NavDestination;
    if-nez v2, :cond_6

    .line 676
    nop

    .line 677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring popBackStack to route "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as it was not found on the current back stack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 675
    const-string v4, "NavController"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return v1

    .line 682
    :cond_6
    invoke-direct {p0, v0, v2, p2, p3}, Landroidx/navigation/NavController;->executePopOperations(Ljava/util/List;Landroidx/navigation/NavDestination;ZZ)Z

    move-result v1

    return v1
.end method

.method static synthetic popBackStackInternal$default(Landroidx/navigation/NavController;Landroidx/navigation/Navigator;Landroidx/navigation/NavBackStackEntry;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 280
    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 283
    sget-object p4, Landroidx/navigation/NavController$popBackStackInternal$1;->INSTANCE:Landroidx/navigation/NavController$popBackStackInternal$1;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 280
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/navigation/NavController;->popBackStackInternal(Landroidx/navigation/Navigator;Landroidx/navigation/NavBackStackEntry;ZLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: popBackStackInternal"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic popBackStackInternal$default(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z
    .locals 0

    .line 585
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 588
    const/4 p3, 0x0

    .line 585
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: popBackStackInternal"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic popBackStackInternal$default(Landroidx/navigation/NavController;Ljava/lang/Object;ZZILjava/lang/Object;)Z
    .locals 0

    .line 622
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 625
    const/4 p3, 0x0

    .line 622
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popBackStackInternal(Ljava/lang/Object;ZZ)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: popBackStackInternal"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final popEntryFromBackStack(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V
    .locals 6
    .param p1, "popUpTo"    # Landroidx/navigation/NavBackStackEntry;
    .param p2, "saveState"    # Z
    .param p3, "savedState"    # Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavBackStackEntry;",
            "Z",
            "Lkotlin/collections/ArrayDeque<",
            "Landroidx/navigation/NavBackStackEntryState;",
            ">;)V"
        }
    .end annotation

    .line 794
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 795
    .local v0, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 799
    iget-object v1, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 801
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    .line 802
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v2

    .line 801
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v1

    .line 800
    nop

    .line 804
    .local v1, "navigator":Landroidx/navigation/Navigator;
    iget-object v2, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 809
    .local v2, "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/navigation/NavController$NavControllerNavigatorState;->getTransitionsInProgress()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-eqz v5, :cond_0

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-nez v5, :cond_2

    .line 810
    iget-object v5, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    goto :goto_2

    :cond_2
    :goto_1
    nop

    .line 808
    :goto_2
    nop

    .line 811
    .local v3, "transitioning":Z
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v4

    sget-object v5, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 812
    if-eqz p2, :cond_3

    .line 814
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v4}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    .line 816
    new-instance v4, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {v4, v0}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    invoke-virtual {p3, v4}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 818
    :cond_3
    if-nez v3, :cond_4

    .line 819
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v4}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    .line 820
    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->unlinkChildFromParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;

    goto :goto_3

    .line 822
    :cond_4
    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v4}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    .line 825
    :cond_5
    :goto_3
    if-nez p2, :cond_6

    if-nez v3, :cond_6

    .line 826
    iget-object v4, p0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/navigation/NavControllerViewModel;->clear(Ljava/lang/String;)V

    .line 828
    :cond_6
    return-void

    .line 795
    .end local v1    # "navigator":Landroidx/navigation/Navigator;
    .end local v2    # "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v3    # "transitioning":Z
    :cond_7
    const/4 v1, 0x0

    .line 796
    .local v1, "$i$a$-check-NavController$popEntryFromBackStack$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to pop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which is not the top of the back stack ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 797
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    .line 796
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 797
    nop

    .line 795
    .end local v1    # "$i$a$-check-NavController$popEntryFromBackStack$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic popEntryFromBackStack$default(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V
    .locals 0

    .line 789
    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 791
    const/4 p2, 0x0

    .line 789
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 792
    new-instance p3, Lkotlin/collections/ArrayDeque;

    invoke-direct {p3}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 789
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popEntryFromBackStack(Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: popEntryFromBackStack"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final restoreStateInternal(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p4, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    .line 2069
    iget-object v0, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2070
    const/4 v0, 0x0

    return v0

    .line 2072
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2074
    .local v0, "backStackId":Ljava/lang/String;
    iget-object v1, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Landroidx/navigation/NavController$restoreStateInternal$1;

    invoke-direct {v2, v0}, Landroidx/navigation/NavController$restoreStateInternal$1;-><init>(Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    .line 2075
    iget-object v1, p0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    invoke-static {v1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/collections/ArrayDeque;

    .line 2077
    .local v1, "backStackState":Lkotlin/collections/ArrayDeque;
    invoke-direct {p0, v1}, Landroidx/navigation/NavController;->instantiateBackStack(Lkotlin/collections/ArrayDeque;)Ljava/util/List;

    move-result-object v2

    .line 2078
    .local v2, "entries":Ljava/util/List;
    invoke-direct {p0, v2, p2, p3, p4}, Landroidx/navigation/NavController;->executeRestoreState(Ljava/util/List;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z

    move-result v3

    return v3
.end method

.method private final restoreStateInternal(Ljava/lang/String;)Z
    .locals 8
    .param p1, "route"    # Ljava/lang/String;

    .line 2082
    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 2084
    .local v0, "id":I
    iget-object v1, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2085
    invoke-direct {p0, v0, v2, v2, v2}, Landroidx/navigation/NavController;->restoreStateInternal(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z

    move-result v1

    goto :goto_2

    .line 2089
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->findDestination(Ljava/lang/String;)Landroidx/navigation/NavDestination;

    move-result-object v1

    .line 2090
    .local v1, "matchingDestination":Landroidx/navigation/NavDestination;
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-eqz v4, :cond_4

    .line 2095
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    .line 2096
    iget-object v4, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2098
    .local v4, "backStackId":Ljava/lang/String;
    iget-object v5, p0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Landroidx/navigation/NavController$restoreStateInternal$3;

    invoke-direct {v6, v4}, Landroidx/navigation/NavController$restoreStateInternal$3;-><init>(Ljava/lang/String;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    .line 2099
    iget-object v5, p0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    invoke-static {v5}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/collections/ArrayDeque;

    .line 2101
    .local v5, "backStackState":Lkotlin/collections/ArrayDeque;
    invoke-virtual {v1, p1}, Landroidx/navigation/NavDestination;->matchDeepLink(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v6

    .line 2105
    .local v6, "matchingDeepLink":Landroidx/navigation/NavDestination$DeepLinkMatch;
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lkotlin/collections/ArrayDeque;->firstOrNull()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/navigation/NavBackStackEntryState;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroidx/navigation/NavBackStackEntryState;->getArgs()Landroid/os/Bundle;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v2

    :goto_1
    invoke-virtual {v6, v7}, Landroidx/navigation/NavDestination$DeepLinkMatch;->hasMatchingArgs(Landroid/os/Bundle;)Z

    move-result v7

    .line 2104
    nop

    .line 2106
    .local v7, "isCorrectStack":Z
    if-nez v7, :cond_3

    return v3

    .line 2107
    :cond_3
    invoke-direct {p0, v5}, Landroidx/navigation/NavController;->instantiateBackStack(Lkotlin/collections/ArrayDeque;)Ljava/util/List;

    move-result-object v3

    .line 2108
    .local v3, "entries":Ljava/util/List;
    invoke-direct {p0, v3, v2, v2, v2}, Landroidx/navigation/NavController;->executeRestoreState(Ljava/util/List;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z

    move-result v2

    move v1, v2

    .line 2084
    .end local v1    # "matchingDestination":Landroidx/navigation/NavDestination;
    .end local v3    # "entries":Ljava/util/List;
    .end local v4    # "backStackId":Ljava/lang/String;
    .end local v5    # "backStackState":Lkotlin/collections/ArrayDeque;
    .end local v6    # "matchingDeepLink":Landroidx/navigation/NavDestination$DeepLinkMatch;
    .end local v7    # "isCorrectStack":Z
    :goto_2
    return v1

    .line 2090
    .restart local v1    # "matchingDestination":Landroidx/navigation/NavDestination;
    :cond_4
    const/4 v2, 0x0

    .line 2091
    .local v2, "$i$a$-check-NavController$restoreStateInternal$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restore State failed: route "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be found from the current destination "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2092
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    .line 2091
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2092
    nop

    .line 2090
    .end local v2    # "$i$a$-check-NavController$restoreStateInternal$2":I
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final tryRelaunchUpToExplicitStack()Z
    .locals 18

    .line 951
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 952
    return v2

    .line 955
    :cond_0
    iget-object v1, v0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 956
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 958
    .local v3, "extras":Landroid/os/Bundle;
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v4, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->toMutableList([I)Ljava/util/List;

    move-result-object v4

    .line 959
    .local v4, "deepLinkIds":Ljava/util/List;
    const-string v5, "android-support-nav:controller:deepLinkArgs"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 962
    .local v5, "deepLinkArgs":Ljava/util/ArrayList;
    const/4 v6, 0x0

    .local v6, "leafDestinationId":I
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 963
    if-eqz v5, :cond_1

    move-object v7, v5

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    .line 966
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 967
    return v2

    .line 971
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v7

    check-cast v7, Landroidx/navigation/NavDestination;

    invoke-virtual {v0, v7, v6, v2}, Landroidx/navigation/NavController;->findDestinationComprehensive(Landroidx/navigation/NavDestination;IZ)Landroidx/navigation/NavDestination;

    move-result-object v7

    .local v7, "$this$tryRelaunchUpToExplicitStack_u24lambda_u2413":Landroidx/navigation/NavDestination;
    const/4 v8, 0x0

    .line 972
    .local v8, "$i$a$-with-NavController$tryRelaunchUpToExplicitStack$1":I
    instance-of v9, v7, Landroidx/navigation/NavGraph;

    if-eqz v9, :cond_3

    .line 973
    sget-object v9, Landroidx/navigation/NavGraph;->Companion:Landroidx/navigation/NavGraph$Companion;

    move-object v10, v7

    check-cast v10, Landroidx/navigation/NavGraph;

    invoke-virtual {v9, v10}, Landroidx/navigation/NavGraph$Companion;->findStartDestination(Landroidx/navigation/NavGraph;)Landroidx/navigation/NavDestination;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/navigation/NavDestination;->getId()I

    move-result v6

    .line 975
    :cond_3
    nop

    .line 971
    .end local v7    # "$this$tryRelaunchUpToExplicitStack_u24lambda_u2413":Landroidx/navigation/NavDestination;
    .end local v8    # "$i$a$-with-NavController$tryRelaunchUpToExplicitStack$1":I
    nop

    .line 978
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroidx/navigation/NavDestination;->getId()I

    move-result v7

    if-ne v6, v7, :cond_4

    move v7, v8

    goto :goto_0

    :cond_4
    move v7, v2

    :goto_0
    if-nez v7, :cond_5

    .line 979
    return v2

    .line 982
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->createDeepLink()Landroidx/navigation/NavDeepLinkBuilder;

    move-result-object v7

    .line 985
    .local v7, "navDeepLinkBuilder":Landroidx/navigation/NavDeepLinkBuilder;
    new-array v9, v8, [Lkotlin/Pair;

    const-string v10, "android-support-nav:controller:deepLinkIntent"

    invoke-static {v10, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v9}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v2

    .line 986
    .local v2, "arguments":Landroid/os/Bundle;
    const-string v9, "android-support-nav:controller:deepLinkExtras"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 2863
    .local v9, "it":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 986
    .local v10, "$i$a$-let-NavController$tryRelaunchUpToExplicitStack$2":I
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 987
    .end local v9    # "it":Landroid/os/Bundle;
    .end local v10    # "$i$a$-let-NavController$tryRelaunchUpToExplicitStack$2":I
    :cond_6
    invoke-virtual {v7, v2}, Landroidx/navigation/NavDeepLinkBuilder;->setArguments(Landroid/os/Bundle;)Landroidx/navigation/NavDeepLinkBuilder;

    .line 989
    move-object v9, v4

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 2883
    .local v10, "$i$f$forEachIndexed":I
    const/4 v11, 0x0

    .line 2884
    .local v11, "index$iv":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "item$iv":Ljava/lang/Object;
    add-int/lit8 v14, v11, 0x1

    .end local v11    # "index$iv":I
    .local v14, "index$iv":I
    if-gez v11, :cond_7

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_7
    move-object v15, v13

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    .local v11, "index":I
    .local v15, "deepLinkId":I
    const/16 v16, 0x0

    .line 990
    .local v16, "$i$a$-forEachIndexed-NavController$tryRelaunchUpToExplicitStack$3":I
    if-eqz v5, :cond_8

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Bundle;

    goto :goto_2

    :cond_8
    const/16 v17, 0x0

    :goto_2
    move-object/from16 v8, v17

    invoke-virtual {v7, v15, v8}, Landroidx/navigation/NavDeepLinkBuilder;->addDestination(ILandroid/os/Bundle;)Landroidx/navigation/NavDeepLinkBuilder;

    .line 991
    nop

    .line 2884
    .end local v11    # "index":I
    .end local v15    # "deepLinkId":I
    .end local v16    # "$i$a$-forEachIndexed-NavController$tryRelaunchUpToExplicitStack$3":I
    move v11, v14

    const/4 v8, 0x1

    .end local v13    # "item$iv":Ljava/lang/Object;
    goto :goto_1

    .line 2885
    .end local v14    # "index$iv":I
    .local v11, "index$iv":I
    :cond_9
    nop

    .line 993
    .end local v9    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v11    # "index$iv":I
    invoke-virtual {v7}, Landroidx/navigation/NavDeepLinkBuilder;->createTaskStackBuilder()Landroidx/core/app/TaskStackBuilder;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 994
    iget-object v8, v0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 995
    :cond_a
    const/4 v8, 0x1

    return v8
.end method

.method private final tryRelaunchUpToGeneratedStack()Z
    .locals 11

    .line 1003
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    .line 1004
    .local v0, "currentDestination":Landroidx/navigation/NavDestination;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    .line 1005
    .local v1, "destId":I
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v2

    .line 1006
    .local v2, "parent":Landroidx/navigation/NavGraph;
    :goto_0
    if-eqz v2, :cond_4

    .line 1007
    invoke-virtual {v2}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v3

    if-eq v3, v1, :cond_3

    .line 1008
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1009
    .local v3, "args":Landroid/os/Bundle;
    iget-object v4, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1010
    iget-object v4, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 1013
    .local v4, "data":Landroid/net/Uri;
    if-eqz v4, :cond_1

    .line 1016
    iget-object v7, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    const-string v8, "android-support-nav:controller:deepLinkIntent"

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1017
    iget-object v7, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-direct {p0, v7}, Landroidx/navigation/NavController;->getTopGraph(Lkotlin/collections/ArrayDeque;)Landroidx/navigation/NavGraph;

    move-result-object v7

    .line 1019
    .local v7, "currGraph":Landroidx/navigation/NavGraph;
    nop

    .line 1020
    new-instance v8, Landroidx/navigation/NavDeepLinkRequest;

    iget-object v9, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "activity!!.intent"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/content/Intent;)V

    .line 1021
    nop

    .line 1022
    nop

    .line 1023
    move-object v9, v7

    check-cast v9, Landroidx/navigation/NavDestination;

    .line 1019
    invoke-virtual {v7, v8, v5, v5, v9}, Landroidx/navigation/NavGraph;->matchDeepLinkComprehensive(Landroidx/navigation/NavDeepLinkRequest;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v8

    .line 1018
    nop

    .line 1025
    .local v8, "matchingDeepLink":Landroidx/navigation/NavDestination$DeepLinkMatch;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object v9

    goto :goto_1

    :cond_0
    move-object v9, v6

    :goto_1
    if-eqz v9, :cond_1

    .line 1027
    invoke-virtual {v8}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v9

    .line 1028
    invoke-virtual {v8}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object v10

    .line 1027
    invoke-virtual {v9, v10}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 1026
    nop

    .line 1030
    .local v9, "destinationArgs":Landroid/os/Bundle;
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1035
    .end local v4    # "data":Landroid/net/Uri;
    .end local v7    # "currGraph":Landroidx/navigation/NavGraph;
    .end local v8    # "matchingDeepLink":Landroidx/navigation/NavDestination$DeepLinkMatch;
    .end local v9    # "destinationArgs":Landroid/os/Bundle;
    :cond_1
    new-instance v4, Landroidx/navigation/NavDeepLinkBuilder;

    invoke-direct {v4, p0}, Landroidx/navigation/NavDeepLinkBuilder;-><init>(Landroidx/navigation/NavController;)V

    .line 1036
    invoke-virtual {v2}, Landroidx/navigation/NavGraph;->getId()I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v4, v7, v6, v8, v6}, Landroidx/navigation/NavDeepLinkBuilder;->setDestination$default(Landroidx/navigation/NavDeepLinkBuilder;ILandroid/os/Bundle;ILjava/lang/Object;)Landroidx/navigation/NavDeepLinkBuilder;

    move-result-object v4

    .line 1037
    invoke-virtual {v4, v3}, Landroidx/navigation/NavDeepLinkBuilder;->setArguments(Landroid/os/Bundle;)Landroidx/navigation/NavDeepLinkBuilder;

    move-result-object v4

    .line 1038
    invoke-virtual {v4}, Landroidx/navigation/NavDeepLinkBuilder;->createTaskStackBuilder()Landroidx/core/app/TaskStackBuilder;

    move-result-object v4

    .line 1034
    nop

    .line 1039
    .local v4, "parentIntents":Landroidx/core/app/TaskStackBuilder;
    invoke-virtual {v4}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 1040
    iget-object v6, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 1041
    :cond_2
    return v5

    .line 1043
    .end local v3    # "args":Landroid/os/Bundle;
    .end local v4    # "parentIntents":Landroidx/core/app/TaskStackBuilder;
    :cond_3
    invoke-virtual {v2}, Landroidx/navigation/NavGraph;->getId()I

    move-result v1

    .line 1044
    invoke-virtual {v2}, Landroidx/navigation/NavGraph;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v2

    goto/16 :goto_0

    .line 1046
    :cond_4
    const/4 v3, 0x0

    return v3
.end method

.method private final updateOnBackPressedCallbackEnabled()V
    .locals 3

    .line 2591
    iget-object v0, p0, Landroidx/navigation/NavController;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 2592
    iget-boolean v1, p0, Landroidx/navigation/NavController;->enableOnBackPressedCallback:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroidx/navigation/NavController;->getDestinationCountOnBackStack()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2591
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 2593
    return-void
.end method


# virtual methods
.method public addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroidx/navigation/NavController$OnDestinationChangedListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Landroidx/navigation/NavController;->onDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 420
    .local v0, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    nop

    .line 421
    nop

    .line 422
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    .line 423
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 420
    invoke-interface {p1, p0, v1, v2}, Landroidx/navigation/NavController$OnDestinationChangedListener;->onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V

    .line 426
    .end local v0    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    :cond_0
    return-void
.end method

.method public final synthetic clearBackStack()Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 874
    .local v0, "$i$f$clearBackStack":I
    const/4 v1, 0x6

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string v1, "kotlinx.serialization.serializer.simple"

    invoke-static {v1}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-static {v1}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Lkotlinx/serialization/KSerializer;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/navigation/NavController;->clearBackStack(I)Z

    move-result v1

    return v1
.end method

.method public final clearBackStack(I)Z
    .locals 2
    .param p1, "destinationId"    # I

    .line 857
    invoke-direct {p0, p1}, Landroidx/navigation/NavController;->clearBackStackInternal(I)Z

    move-result v0

    .line 860
    .local v0, "cleared":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final clearBackStack(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "route"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 890
    invoke-direct {p0, p1}, Landroidx/navigation/NavController;->generateRouteFilled(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 891
    .local v0, "finalRoute":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroidx/navigation/NavController;->clearBackStackInternal(Ljava/lang/String;)Z

    move-result v1

    .line 894
    .local v1, "cleared":Z
    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final clearBackStack(Ljava/lang/String;)Z
    .locals 2
    .param p1, "route"    # Ljava/lang/String;

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 841
    invoke-direct {p0, p1}, Landroidx/navigation/NavController;->clearBackStackInternal(Ljava/lang/String;)Z

    move-result v0

    .line 844
    .local v0, "cleared":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public createDeepLink()Landroidx/navigation/NavDeepLinkBuilder;
    .locals 1

    .line 2435
    new-instance v0, Landroidx/navigation/NavDeepLinkBuilder;

    invoke-direct {v0, p0}, Landroidx/navigation/NavDeepLinkBuilder;-><init>(Landroidx/navigation/NavController;)V

    return-object v0
.end method

.method public enableOnBackPressed(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 2586
    iput-boolean p1, p0, Landroidx/navigation/NavController;->enableOnBackPressedCallback:Z

    .line 2587
    invoke-direct {p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    .line 2588
    return-void
.end method

.method public final findDestination(I)Landroidx/navigation/NavDestination;
    .locals 2
    .param p1, "destinationId"    # I

    .line 1600
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-nez v0, :cond_0

    .line 1601
    const/4 v0, 0x0

    return-object v0

    .line 1603
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getId()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1604
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    check-cast v0, Landroidx/navigation/NavDestination;

    return-object v0

    .line 1606
    :cond_1
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/navigation/NavDestination;

    .line 1607
    .local v0, "currentNode":Landroidx/navigation/NavDestination;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroidx/navigation/NavController;->findDestinationComprehensive(Landroidx/navigation/NavDestination;IZ)Landroidx/navigation/NavDestination;

    move-result-object v1

    return-object v1
.end method

.method public final findDestination(Ljava/lang/String;)Landroidx/navigation/NavDestination;
    .locals 1
    .param p1, "route"    # Ljava/lang/String;

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1630
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-nez v0, :cond_0

    .line 1631
    const/4 v0, 0x0

    return-object v0

    .line 1634
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getRoute()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroidx/navigation/NavGraph;->matchDeepLink(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1637
    :cond_1
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-direct {p0, v0}, Landroidx/navigation/NavController;->getTopGraph(Lkotlin/collections/ArrayDeque;)Landroidx/navigation/NavGraph;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/navigation/NavGraph;->findNode(Ljava/lang/String;)Landroidx/navigation/NavDestination;

    move-result-object v0

    return-object v0

    .line 1635
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    check-cast v0, Landroidx/navigation/NavDestination;

    return-object v0
.end method

.method public final findDestinationComprehensive(Landroidx/navigation/NavDestination;IZ)Landroidx/navigation/NavDestination;
    .locals 2
    .param p1, "$this$findDestinationComprehensive"    # Landroidx/navigation/NavDestination;
    .param p2, "destinationId"    # I
    .param p3, "searchChildren"    # Z

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1620
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 1621
    return-object p1

    .line 1623
    :cond_0
    instance-of v0, p1, Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/navigation/NavGraph;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1624
    .local v0, "currentGraph":Landroidx/navigation/NavGraph;
    :goto_0
    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavDestination;

    invoke-virtual {v0, p2, v1, p3}, Landroidx/navigation/NavGraph;->findNodeComprehensive(ILandroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object v1

    return-object v1
.end method

.method public final synthetic getBackStackEntry()Landroidx/navigation/NavBackStackEntry;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/navigation/NavBackStackEntry;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2678
    .local v0, "$i$f$getBackStackEntry":I
    const/4 v1, 0x6

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string v1, "kotlinx.serialization.serializer.simple"

    invoke-static {v1}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {v3}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Lkotlinx/serialization/KSerializer;)I

    move-result v3

    .line 2679
    .local v3, "id":I
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavDestination;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v3, v5}, Landroidx/navigation/NavController;->findDestinationComprehensive(Landroidx/navigation/NavDestination;IZ)Landroidx/navigation/NavDestination;

    move-result-object v4

    const/4 v6, 0x4

    if-eqz v4, :cond_4

    .line 2684
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentBackStack()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .local v4, "$this$lastOrNull$iv":Ljava/util/List;
    const/4 v7, 0x0

    .line 3003
    .local v7, "$i$f$lastOrNull":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v4, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v8

    .line 3004
    .local v8, "iterator$iv":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3005
    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    .line 3006
    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/navigation/NavBackStackEntry;

    .local v10, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v11, 0x0

    .line 2684
    .local v11, "$i$a$-lastOrNull-NavController$getBackStackEntry$lastFromBackStack$3":I
    invoke-virtual {v10}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/navigation/NavDestination;->getId()I

    move-result v12

    if-ne v12, v3, :cond_1

    move v12, v5

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    .line 3006
    .end local v10    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v11    # "$i$a$-lastOrNull-NavController$getBackStackEntry$lastFromBackStack$3":I
    :goto_0
    if-eqz v12, :cond_0

    move-object v1, v9

    goto :goto_1

    .line 3008
    .end local v9    # "element$iv":Ljava/lang/Object;
    :cond_2
    nop

    .line 2684
    .end local v4    # "$this$lastOrNull$iv":Ljava/util/List;
    .end local v7    # "$i$f$lastOrNull":I
    .end local v8    # "iterator$iv":Ljava/util/ListIterator;
    :goto_1
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 2683
    nop

    .line 2685
    .local v1, "lastFromBackStack":Landroidx/navigation/NavBackStackEntry;
    if-eqz v1, :cond_3

    .line 2689
    return-object v1

    .line 2685
    :cond_3
    const/4 v4, 0x0

    .line 2686
    .local v4, "$i$a$-requireNotNull-NavController$getBackStackEntry$4":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No destination with route "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " is on the NavController\'s back stack. The current destination is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2687
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v5

    .line 2686
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2687
    nop

    .line 2685
    .end local v4    # "$i$a$-requireNotNull-NavController$getBackStackEntry$4":I
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2679
    .end local v1    # "lastFromBackStack":Landroidx/navigation/NavBackStackEntry;
    :cond_4
    const/4 v1, 0x0

    .line 2680
    .local v1, "$i$a$-requireNotNull-NavController$getBackStackEntry$3":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destination with route "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " cannot be found in navigation graph "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2681
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v4

    .line 2680
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2681
    nop

    .line 2679
    .end local v1    # "$i$a$-requireNotNull-NavController$getBackStackEntry$3":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;
    .locals 7
    .param p1, "destinationId"    # I

    .line 2637
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    check-cast v0, Ljava/util/List;

    .local v0, "$this$lastOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 2991
    .local v1, "$i$f$lastOrNull":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 2992
    .local v2, "iterator$iv":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2993
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    .line 2994
    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .local v4, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v5, 0x0

    .line 2637
    .local v5, "$i$a$-lastOrNull-NavController$getBackStackEntry$lastFromBackStack$1":I
    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/navigation/NavDestination;->getId()I

    move-result v6

    if-ne v6, p1, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 2994
    .end local v4    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v5    # "$i$a$-lastOrNull-NavController$getBackStackEntry$lastFromBackStack$1":I
    :goto_0
    if-eqz v6, :cond_0

    goto :goto_1

    .line 2996
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    .line 2637
    .end local v0    # "$this$lastOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$lastOrNull":I
    .end local v2    # "iterator$iv":Ljava/util/ListIterator;
    :goto_1
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 2636
    move-object v0, v3

    .line 2638
    .local v0, "lastFromBackStack":Landroidx/navigation/NavBackStackEntry;
    if-eqz v0, :cond_3

    .line 2642
    return-object v0

    .line 2638
    :cond_3
    const/4 v1, 0x0

    .line 2639
    .local v1, "$i$a$-requireNotNull-NavController$getBackStackEntry$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No destination with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is on the NavController\'s back stack. The current destination is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2640
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    .line 2639
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2640
    nop

    .line 2638
    .end local v1    # "$i$a$-requireNotNull-NavController$getBackStackEntry$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getBackStackEntry(Ljava/lang/Object;)Landroidx/navigation/NavBackStackEntry;
    .locals 2
    .param p1, "route"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Landroidx/navigation/NavBackStackEntry;"
        }
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2706
    invoke-direct {p0, p1}, Landroidx/navigation/NavController;->generateRouteFilled(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2707
    .local v0, "finalRoute":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->getBackStackEntry(Ljava/lang/String;)Landroidx/navigation/NavBackStackEntry;

    move-result-object v1

    return-object v1
.end method

.method public final getBackStackEntry(Ljava/lang/String;)Landroidx/navigation/NavBackStackEntry;
    .locals 8
    .param p1, "route"    # Ljava/lang/String;

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2658
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    check-cast v0, Ljava/util/List;

    .local v0, "$this$lastOrNull$iv":Ljava/util/List;
    const/4 v1, 0x0

    .line 2997
    .local v1, "$i$f$lastOrNull":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 2998
    .local v2, "iterator$iv":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2999
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    .line 3000
    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .local v4, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v5, 0x0

    .line 2658
    .local v5, "$i$a$-lastOrNull-NavController$getBackStackEntry$lastFromBackStack$2":I
    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v6

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroidx/navigation/NavDestination;->hasRoute(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    .line 3000
    .end local v4    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v5    # "$i$a$-lastOrNull-NavController$getBackStackEntry$lastFromBackStack$2":I
    if-eqz v4, :cond_0

    goto :goto_0

    .line 3002
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    .line 2658
    .end local v0    # "$this$lastOrNull$iv":Ljava/util/List;
    .end local v1    # "$i$f$lastOrNull":I
    .end local v2    # "iterator$iv":Ljava/util/ListIterator;
    :goto_0
    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 2657
    move-object v0, v3

    .line 2659
    .local v0, "lastFromBackStack":Landroidx/navigation/NavBackStackEntry;
    if-eqz v0, :cond_2

    .line 2663
    return-object v0

    .line 2659
    :cond_2
    const/4 v1, 0x0

    .line 2660
    .local v1, "$i$a$-requireNotNull-NavController$getBackStackEntry$2":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No destination with route "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is on the NavController\'s back stack. The current destination is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2661
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    .line 2660
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2661
    nop

    .line 2659
    .end local v1    # "$i$a$-requireNotNull-NavController$getBackStackEntry$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 78
    iget-object v0, p0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCurrentBackStack()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Landroidx/navigation/NavController;->currentBackStack:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;
    .locals 1

    .line 2716
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    return-object v0
.end method

.method public final getCurrentBackStackEntryFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 2725
    iget-object v0, p0, Landroidx/navigation/NavController;->currentBackStackEntryFlow:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public getCurrentDestination()Landroidx/navigation/NavDestination;
    .locals 1

    .line 1594
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentBackStackEntry()Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getGraph()Landroidx/navigation/NavGraph;
    .locals 2

    .line 103
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    const-string v1, "null cannot be cast to non-null type androidx.navigation.NavGraph"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 2863
    :cond_0
    const/4 v0, 0x0

    .line 103
    .local v0, "$i$a$-checkNotNull-NavController$graph$1":I
    nop

    .end local v0    # "$i$a$-checkNotNull-NavController$graph$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setGraph() before calling getGraph()"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getHostLifecycleState$navigation_runtime_release()Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    .line 186
    iget-object v0, p0, Landroidx/navigation/NavController;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-nez v0, :cond_0

    .line 187
    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 186
    :goto_0
    return-object v0
.end method

.method public getNavInflater()Landroidx/navigation/NavInflater;
    .locals 1

    .line 1216
    iget-object v0, p0, Landroidx/navigation/NavController;->navInflater$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavInflater;

    return-object v0
.end method

.method public getNavigatorProvider()Landroidx/navigation/NavigatorProvider;
    .locals 1

    .line 248
    iget-object v0, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    return-object v0
.end method

.method public getPreviousBackStackEntry()Landroidx/navigation/NavBackStackEntry;
    .locals 8

    .line 2738
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2740
    .local v0, "iterator":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2741
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2743
    :cond_0
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .local v1, "$this$firstOrNull$iv":Lkotlin/sequences/Sequence;
    const/4 v2, 0x0

    .line 3009
    .local v2, "$i$f$firstOrNull":I
    invoke-interface {v1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .local v5, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v6, 0x0

    .line 2743
    .local v6, "$i$a$-firstOrNull-NavController$previousBackStackEntry$1":I
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v7

    instance-of v7, v7, Landroidx/navigation/NavGraph;

    .line 3009
    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v6    # "$i$a$-firstOrNull-NavController$previousBackStackEntry$1":I
    if-nez v7, :cond_1

    goto :goto_0

    .line 3010
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x0

    .end local v1    # "$this$firstOrNull$iv":Lkotlin/sequences/Sequence;
    .end local v2    # "$i$f$firstOrNull":I
    :goto_0
    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    .line 2743
    return-object v4
.end method

.method public getViewModelStoreOwner(I)Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 4
    .param p1, "navGraphId"    # I

    .line 2615
    iget-object v0, p0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    if-eqz v0, :cond_1

    .line 2618
    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->getBackStackEntry(I)Landroidx/navigation/NavBackStackEntry;

    move-result-object v0

    .line 2619
    .local v0, "lastFromBackStack":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    instance-of v1, v1, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_0

    .line 2622
    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/ViewModelStoreOwner;

    return-object v1

    .line 2619
    :cond_0
    const/4 v1, 0x0

    .line 2620
    .local v1, "$i$a$-require-NavController$getViewModelStoreOwner$2":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No NavGraph with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is on the NavController\'s back stack"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2619
    .end local v1    # "$i$a$-require-NavController$getViewModelStoreOwner$2":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2615
    .end local v0    # "lastFromBackStack":Landroidx/navigation/NavBackStackEntry;
    :cond_1
    const/4 v0, 0x0

    .line 2616
    .local v0, "$i$a$-checkNotNull-NavController$getViewModelStoreOwner$1":I
    nop

    .line 2615
    .end local v0    # "$i$a$-checkNotNull-NavController$getViewModelStoreOwner$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setViewModelStore() before calling getViewModelStoreOwner()."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getVisibleEntries()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;>;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Landroidx/navigation/NavController;->visibleEntries:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public handleDeepLink(Landroid/content/Intent;)Z
    .locals 26
    .param p1, "intent"    # Landroid/content/Intent;

    .line 1394
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v1, 0x0

    if-nez v8, :cond_0

    .line 1395
    return v1

    .line 1397
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 1399
    .local v9, "extras":Landroid/os/Bundle;
    nop

    .line 1400
    const-string v2, "NavController"

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    :try_start_0
    const-string v0, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1401
    :catch_0
    move-exception v0

    .line 1402
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleDeepLink() could not extract deepLink from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1403
    move-object v0, v10

    goto :goto_0

    .line 1400
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v0, v10

    .line 1399
    :goto_0
    nop

    .line 1398
    nop

    .line 1405
    .local v0, "deepLink":[I
    if-eqz v9, :cond_2

    const-string v3, "android-support-nav:controller:deepLinkArgs"

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v10

    .line 1406
    .local v3, "deepLinkArgs":Ljava/util/ArrayList;
    :goto_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v11, v4

    .line 1407
    .local v11, "globalArgs":Landroid/os/Bundle;
    if-eqz v9, :cond_3

    const-string v4, "android-support-nav:controller:deepLinkExtras"

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v10

    :goto_2
    move-object v12, v4

    .line 1408
    .local v12, "deepLinkExtras":Landroid/os/Bundle;
    if-eqz v12, :cond_4

    .line 1409
    invoke-virtual {v11, v12}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1411
    :cond_4
    const/4 v13, 0x1

    if-eqz v0, :cond_6

    array-length v4, v0

    if-nez v4, :cond_5

    move v4, v13

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    if-eqz v4, :cond_7

    .line 1412
    :cond_6
    iget-object v4, v7, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-direct {v7, v4}, Landroidx/navigation/NavController;->getTopGraph(Lkotlin/collections/ArrayDeque;)Landroidx/navigation/NavGraph;

    move-result-object v4

    .line 1414
    .local v4, "currGraph":Landroidx/navigation/NavGraph;
    nop

    .line 1415
    new-instance v5, Landroidx/navigation/NavDeepLinkRequest;

    invoke-direct {v5, v8}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/content/Intent;)V

    .line 1416
    nop

    .line 1417
    nop

    .line 1418
    move-object v6, v4

    check-cast v6, Landroidx/navigation/NavDestination;

    .line 1414
    invoke-virtual {v4, v5, v13, v13, v6}, Landroidx/navigation/NavGraph;->matchDeepLinkComprehensive(Landroidx/navigation/NavDeepLinkRequest;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v5

    .line 1413
    nop

    .line 1420
    .local v5, "matchingDeepLink":Landroidx/navigation/NavDestination$DeepLinkMatch;
    if-eqz v5, :cond_7

    .line 1421
    invoke-virtual {v5}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v6

    .line 1422
    .local v6, "destination":Landroidx/navigation/NavDestination;
    invoke-static {v6, v10, v13, v10}, Landroidx/navigation/NavDestination;->buildDeepLinkIds$default(Landroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;ILjava/lang/Object;)[I

    move-result-object v0

    .line 1423
    const/4 v3, 0x0

    .line 1424
    invoke-virtual {v5}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v14

    .line 1425
    .local v14, "destinationArgs":Landroid/os/Bundle;
    if-eqz v14, :cond_7

    .line 1426
    invoke-virtual {v11, v14}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1430
    .end local v4    # "currGraph":Landroidx/navigation/NavGraph;
    .end local v5    # "matchingDeepLink":Landroidx/navigation/NavDestination$DeepLinkMatch;
    .end local v6    # "destination":Landroidx/navigation/NavDestination;
    .end local v14    # "destinationArgs":Landroid/os/Bundle;
    :cond_7
    move-object v14, v3

    .end local v3    # "deepLinkArgs":Ljava/util/ArrayList;
    .local v14, "deepLinkArgs":Ljava/util/ArrayList;
    if-eqz v0, :cond_19

    array-length v3, v0

    if-nez v3, :cond_8

    move v3, v13

    goto :goto_4

    :cond_8
    move v3, v1

    :goto_4
    if-eqz v3, :cond_9

    move-object/from16 v18, v0

    goto/16 :goto_c

    .line 1433
    :cond_9
    invoke-direct {v7, v0}, Landroidx/navigation/NavController;->findInvalidDestinationDisplayNameInDeepLink([I)Ljava/lang/String;

    move-result-object v15

    .line 1434
    .local v15, "invalidDestinationDisplayName":Ljava/lang/String;
    if-eqz v15, :cond_a

    .line 1436
    nop

    .line 1437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find destination "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in the navigation graph, ignoring the deep link from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1438
    nop

    .line 1437
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1435
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    return v1

    .line 1442
    :cond_a
    const-string v2, "android-support-nav:controller:deepLinkIntent"

    move-object v3, v8

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {v11, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1443
    array-length v2, v0

    new-array v6, v2, [Landroid/os/Bundle;

    .line 1444
    .local v6, "args":[Landroid/os/Bundle;
    const/4 v2, 0x0

    .local v2, "index":I
    array-length v3, v6

    :goto_5
    if-ge v2, v3, :cond_c

    .line 1445
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1446
    .local v4, "arguments":Landroid/os/Bundle;
    invoke-virtual {v4, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1447
    if-eqz v14, :cond_b

    .line 1448
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 1449
    .local v5, "deepLinkArguments":Landroid/os/Bundle;
    if-eqz v5, :cond_b

    .line 1450
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1453
    .end local v5    # "deepLinkArguments":Landroid/os/Bundle;
    :cond_b
    aput-object v4, v6, v2

    .line 1444
    .end local v4    # "arguments":Landroid/os/Bundle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1455
    .end local v2    # "index":I
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v16

    .line 1456
    .local v16, "flags":I
    nop

    .line 1457
    const/high16 v2, 0x10000000

    and-int v3, v16, v2

    if-eqz v3, :cond_e

    .line 1458
    const v3, 0x8000

    and-int v4, v16, v3

    if-nez v4, :cond_e

    .line 1463
    invoke-virtual {v8, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1465
    iget-object v2, v7, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-static {v2}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroidx/core/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v2

    const-string v3, "create(context).addNextI\u2026ntWithParentStack(intent)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1464
    nop

    .line 1466
    .local v2, "taskStackBuilder":Landroidx/core/app/TaskStackBuilder;
    invoke-virtual {v2}, Landroidx/core/app/TaskStackBuilder;->startActivities()V

    .line 1467
    iget-object v3, v7, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_d

    .local v3, "activity":Landroid/app/Activity;
    const/4 v4, 0x0

    .line 1468
    .local v4, "$i$a$-let-NavController$handleDeepLink$1":I
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 1470
    invoke-virtual {v3, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1471
    nop

    .line 1467
    .end local v3    # "activity":Landroid/app/Activity;
    .end local v4    # "$i$a$-let-NavController$handleDeepLink$1":I
    nop

    .line 1472
    :cond_d
    return v13

    .line 1474
    .end local v2    # "taskStackBuilder":Landroidx/core/app/TaskStackBuilder;
    :cond_e
    and-int v2, v16, v2

    const-string v5, "Deep Linking failed: destination "

    if-eqz v2, :cond_12

    .line 1476
    iget-object v1, v7, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1477
    iget-object v1, v7, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/navigation/NavGraph;->getId()I

    move-result v2

    const/16 v17, 0x4

    const/16 v18, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v13, v5

    move/from16 v5, v17

    move-object/from16 v17, v6

    .end local v6    # "args":[Landroid/os/Bundle;
    .local v17, "args":[Landroid/os/Bundle;
    move-object/from16 v6, v18

    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->popBackStackInternal$default(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z

    goto :goto_6

    .line 1476
    .end local v17    # "args":[Landroid/os/Bundle;
    .restart local v6    # "args":[Landroid/os/Bundle;
    :cond_f
    move-object v13, v5

    move-object/from16 v17, v6

    .line 1479
    .end local v6    # "args":[Landroid/os/Bundle;
    .restart local v17    # "args":[Landroid/os/Bundle;
    :goto_6
    const/4 v1, 0x0

    .line 1480
    .local v1, "index":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_11

    .line 1481
    aget v2, v0, v1

    .line 1482
    .local v2, "destinationId":I
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "index":I
    .local v3, "index":I
    aget-object v1, v17, v1

    .line 1483
    .local v1, "arguments":Landroid/os/Bundle;
    invoke-virtual {v7, v2}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v4

    .line 1484
    .local v4, "node":Landroidx/navigation/NavDestination;
    if-eqz v4, :cond_10

    .line 1491
    nop

    .line 1492
    nop

    .line 1493
    nop

    .line 1494
    new-instance v5, Landroidx/navigation/NavController$handleDeepLink$2;

    invoke-direct {v5, v4, v7}, Landroidx/navigation/NavController$handleDeepLink$2;-><init>(Landroidx/navigation/NavDestination;Landroidx/navigation/NavController;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v5}, Landroidx/navigation/NavOptionsBuilderKt;->navOptions(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;

    move-result-object v5

    .line 1513
    nop

    .line 1491
    invoke-direct {v7, v4, v1, v5, v10}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    move v1, v3

    .end local v1    # "arguments":Landroid/os/Bundle;
    .end local v2    # "destinationId":I
    .end local v4    # "node":Landroidx/navigation/NavDestination;
    goto :goto_7

    .line 1485
    .restart local v1    # "arguments":Landroid/os/Bundle;
    .restart local v2    # "destinationId":I
    .restart local v4    # "node":Landroidx/navigation/NavDestination;
    :cond_10
    sget-object v5, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget-object v6, v7, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v5, v6, v2}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 1486
    .local v5, "dest":Ljava/lang/String;
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 1487
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " cannot be found from the current destination "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 1488
    invoke-virtual/range {p0 .. p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v13

    .line 1487
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1486
    invoke-direct {v6, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1516
    .end local v2    # "destinationId":I
    .end local v3    # "index":I
    .end local v4    # "node":Landroidx/navigation/NavDestination;
    .end local v5    # "dest":Ljava/lang/String;
    .local v1, "index":I
    :cond_11
    const/4 v2, 0x1

    iput-boolean v2, v7, Landroidx/navigation/NavController;->deepLinkHandled:Z

    .line 1517
    return v2

    .line 1520
    .end local v1    # "index":I
    .end local v17    # "args":[Landroid/os/Bundle;
    .restart local v6    # "args":[Landroid/os/Bundle;
    :cond_12
    move-object v13, v5

    move-object/from16 v17, v6

    .end local v6    # "args":[Landroid/os/Bundle;
    .restart local v17    # "args":[Landroid/os/Bundle;
    iget-object v2, v7, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    .line 1521
    .local v2, "graph":Landroidx/navigation/NavGraph;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v0

    :goto_8
    if-ge v3, v4, :cond_18

    .line 1522
    aget v5, v0, v3

    .line 1523
    .local v5, "destinationId":I
    aget-object v6, v17, v3

    .line 1524
    .local v6, "arguments":Landroid/os/Bundle;
    if-nez v3, :cond_13

    iget-object v10, v7, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    check-cast v10, Landroidx/navigation/NavDestination;

    goto :goto_9

    :cond_13
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v10

    .line 1525
    .local v10, "node":Landroidx/navigation/NavDestination;
    :goto_9
    if-eqz v10, :cond_17

    .line 1531
    array-length v1, v0

    const/16 v19, 0x1

    add-int/lit8 v1, v1, -0x1

    if-eq v3, v1, :cond_16

    .line 1533
    instance-of v1, v10, Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_15

    .line 1534
    move-object v1, v10

    check-cast v1, Landroidx/navigation/NavGraph;

    .line 1537
    .end local v2    # "graph":Landroidx/navigation/NavGraph;
    .local v1, "graph":Landroidx/navigation/NavGraph;
    :goto_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v2

    instance-of v2, v2, Landroidx/navigation/NavGraph;

    if-eqz v2, :cond_14

    .line 1538
    invoke-virtual {v1}, Landroidx/navigation/NavGraph;->getStartDestinationId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroidx/navigation/NavGraph;

    goto :goto_a

    .line 1537
    :cond_14
    move-object v2, v1

    move/from16 v20, v4

    const/4 v4, 0x0

    goto :goto_b

    .line 1533
    .end local v1    # "graph":Landroidx/navigation/NavGraph;
    .restart local v2    # "graph":Landroidx/navigation/NavGraph;
    :cond_15
    move/from16 v20, v4

    const/4 v4, 0x0

    goto :goto_b

    .line 1543
    :cond_16
    nop

    .line 1544
    nop

    .line 1545
    nop

    .line 1546
    new-instance v20, Landroidx/navigation/NavOptions$Builder;

    invoke-direct/range {v20 .. v20}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 1547
    iget-object v1, v7, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/navigation/NavGraph;->getId()I

    move-result v21

    const/16 v24, 0x4

    const/16 v25, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Landroidx/navigation/NavOptions$Builder;->setPopUpTo$default(Landroidx/navigation/NavOptions$Builder;IZZILjava/lang/Object;)Landroidx/navigation/NavOptions$Builder;

    move-result-object v1

    .line 1548
    move/from16 v20, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroidx/navigation/NavOptions$Builder;->setEnterAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v1

    .line 1549
    invoke-virtual {v1, v4}, Landroidx/navigation/NavOptions$Builder;->setExitAnim(I)Landroidx/navigation/NavOptions$Builder;

    move-result-object v1

    .line 1550
    invoke-virtual {v1}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    move-result-object v1

    .line 1551
    nop

    .line 1543
    const/4 v4, 0x0

    invoke-direct {v7, v10, v6, v1, v4}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 1521
    .end local v5    # "destinationId":I
    .end local v6    # "arguments":Landroid/os/Bundle;
    .end local v10    # "node":Landroidx/navigation/NavDestination;
    :goto_b
    add-int/lit8 v3, v3, 0x1

    move-object v10, v4

    move/from16 v4, v20

    const/4 v1, 0x0

    goto :goto_8

    .line 1526
    .restart local v5    # "destinationId":I
    .restart local v6    # "arguments":Landroid/os/Bundle;
    .restart local v10    # "node":Landroidx/navigation/NavDestination;
    :cond_17
    sget-object v1, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget-object v4, v7, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v1, v4, v5}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1527
    .local v1, "dest":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalStateException;

    .line 1528
    move-object/from16 v18, v0

    .end local v0    # "deepLink":[I
    .local v18, "deepLink":[I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " cannot be found in graph "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1527
    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1521
    .end local v1    # "dest":Ljava/lang/String;
    .end local v5    # "destinationId":I
    .end local v6    # "arguments":Landroid/os/Bundle;
    .end local v10    # "node":Landroidx/navigation/NavDestination;
    .end local v18    # "deepLink":[I
    .restart local v0    # "deepLink":[I
    :cond_18
    move-object/from16 v18, v0

    .line 1555
    .end local v0    # "deepLink":[I
    .end local v3    # "i":I
    .restart local v18    # "deepLink":[I
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroidx/navigation/NavController;->deepLinkHandled:Z

    .line 1556
    return v0

    .line 1430
    .end local v2    # "graph":Landroidx/navigation/NavGraph;
    .end local v15    # "invalidDestinationDisplayName":Ljava/lang/String;
    .end local v16    # "flags":I
    .end local v17    # "args":[Landroid/os/Bundle;
    .end local v18    # "deepLink":[I
    .restart local v0    # "deepLink":[I
    :cond_19
    move-object/from16 v18, v0

    .line 1431
    .end local v0    # "deepLink":[I
    .restart local v18    # "deepLink":[I
    :goto_c
    const/4 v1, 0x0

    return v1
.end method

.method public navigate(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 1680
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 1681
    return-void
.end method

.method public navigate(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 1695
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 1696
    return-void
.end method

.method public navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;

    .line 1714
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 1715
    return-void
.end method

.method public navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 15
    .param p1, "resId"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p4, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    .line 1740
    move-object v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p3

    .line 1742
    .local v0, "finalNavOptions":Landroidx/navigation/NavOptions;
    iget-object v1, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    check-cast v1, Landroidx/navigation/NavDestination;

    goto :goto_0

    :cond_0
    iget-object v1, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_10

    .line 1741
    move-object v9, v1

    .line 1748
    .local v9, "currentNode":Landroidx/navigation/NavDestination;
    move/from16 v1, p1

    .line 1749
    .local v1, "destId":I
    invoke-virtual {v9, v7}, Landroidx/navigation/NavDestination;->getAction(I)Landroidx/navigation/NavAction;

    move-result-object v10

    .line 1750
    .local v10, "navAction":Landroidx/navigation/NavAction;
    const/4 v2, 0x0

    .line 1751
    .local v2, "combinedArgs":Landroid/os/Bundle;
    if-eqz v10, :cond_3

    .line 1752
    if-nez v0, :cond_1

    .line 1753
    invoke-virtual {v10}, Landroidx/navigation/NavAction;->getNavOptions()Landroidx/navigation/NavOptions;

    move-result-object v0

    .line 1755
    :cond_1
    invoke-virtual {v10}, Landroidx/navigation/NavAction;->getDestinationId()I

    move-result v1

    .line 1756
    invoke-virtual {v10}, Landroidx/navigation/NavAction;->getDefaultArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 1757
    .local v3, "navActionArgs":Landroid/os/Bundle;
    if-eqz v3, :cond_2

    .line 1758
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v4

    .line 1759
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object v11, v0

    move v12, v1

    goto :goto_1

    .line 1757
    :cond_2
    move-object v11, v0

    move v12, v1

    goto :goto_1

    .line 1751
    .end local v3    # "navActionArgs":Landroid/os/Bundle;
    :cond_3
    move-object v11, v0

    move v12, v1

    .line 1762
    .end local v0    # "finalNavOptions":Landroidx/navigation/NavOptions;
    .end local v1    # "destId":I
    .local v11, "finalNavOptions":Landroidx/navigation/NavOptions;
    .local v12, "destId":I
    :goto_1
    if-eqz v8, :cond_5

    .line 1763
    if-nez v2, :cond_4

    .line 1764
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v2, v0

    .line 1766
    :cond_4
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object v13, v2

    goto :goto_2

    .line 1762
    :cond_5
    move-object v13, v2

    .line 1769
    .end local v2    # "combinedArgs":Landroid/os/Bundle;
    .local v13, "combinedArgs":Landroid/os/Bundle;
    :goto_2
    nop

    .line 1770
    if-nez v12, :cond_a

    .line 1771
    if-eqz v11, :cond_a

    .line 1772
    invoke-virtual {v11}, Landroidx/navigation/NavOptions;->getPopUpToId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 1773
    invoke-virtual {v11}, Landroidx/navigation/NavOptions;->getPopUpToRoute()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1774
    invoke-virtual {v11}, Landroidx/navigation/NavOptions;->getPopUpToRouteClass()Lkotlin/reflect/KClass;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1776
    :cond_6
    nop

    .line 1777
    invoke-virtual {v11}, Landroidx/navigation/NavOptions;->getPopUpToRoute()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1778
    nop

    .line 1779
    invoke-virtual {v11}, Landroidx/navigation/NavOptions;->getPopUpToRoute()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 1780
    invoke-virtual {v11}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v2

    .line 1778
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->popBackStack$default(Landroidx/navigation/NavController;Ljava/lang/String;ZZILjava/lang/Object;)Z

    goto :goto_3

    .line 1782
    :cond_7
    invoke-virtual {v11}, Landroidx/navigation/NavOptions;->getPopUpToRouteClass()Lkotlin/reflect/KClass;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1783
    nop

    .line 1784
    invoke-virtual {v11}, Landroidx/navigation/NavOptions;->getPopUpToRouteClass()Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KClass;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-static {v0}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Lkotlinx/serialization/KSerializer;)I

    move-result v0

    .line 1785
    invoke-virtual {v11}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v1

    .line 1783
    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    goto :goto_3

    .line 1787
    :cond_8
    invoke-virtual {v11}, Landroidx/navigation/NavOptions;->getPopUpToId()I

    move-result v0

    if-eq v0, v1, :cond_9

    .line 1788
    invoke-virtual {v11}, Landroidx/navigation/NavOptions;->getPopUpToId()I

    move-result v0

    invoke-virtual {v11}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    .line 1790
    :cond_9
    :goto_3
    return-void

    .line 1792
    :cond_a
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v12, :cond_b

    move v2, v0

    goto :goto_4

    :cond_b
    move v2, v1

    :goto_4
    if-eqz v2, :cond_f

    .line 1795
    invoke-virtual {p0, v12}, Landroidx/navigation/NavController;->findDestination(I)Landroidx/navigation/NavDestination;

    move-result-object v2

    .line 1796
    .local v2, "node":Landroidx/navigation/NavDestination;
    if-nez v2, :cond_e

    .line 1797
    sget-object v3, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget-object v4, v6, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, v12}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1798
    .local v3, "dest":Ljava/lang/String;
    if-nez v10, :cond_c

    goto :goto_5

    :cond_c
    move v0, v1

    :goto_5
    const-string v1, " cannot be found from the current destination "

    if-nez v0, :cond_d

    const/4 v0, 0x0

    .line 1799
    .local v0, "$i$a$-require-NavController$navigate$2":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Navigation destination "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " referenced from action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1800
    sget-object v5, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget-object v14, v6, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v5, v14, v7}, Landroidx/navigation/NavDestination$Companion;->getDisplayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 1799
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1800
    nop

    .line 1799
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1801
    nop

    .line 1799
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1801
    nop

    .line 1798
    .end local v0    # "$i$a$-require-NavController$navigate$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1803
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1804
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Navigation action/destination "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1805
    nop

    .line 1804
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1803
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1808
    .end local v3    # "dest":Ljava/lang/String;
    :cond_e
    move-object/from16 v1, p4

    invoke-direct {p0, v2, v13, v11, v1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 1809
    return-void

    .line 1792
    .end local v2    # "node":Landroidx/navigation/NavDestination;
    :cond_f
    move-object/from16 v1, p4

    const/4 v0, 0x0

    .line 1793
    .local v0, "$i$a$-require-NavController$navigate$1":I
    nop

    .line 1792
    .end local v0    # "$i$a$-require-NavController$navigate$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1743
    .end local v9    # "currentNode":Landroidx/navigation/NavDestination;
    .end local v10    # "navAction":Landroidx/navigation/NavAction;
    .end local v11    # "finalNavOptions":Landroidx/navigation/NavOptions;
    .end local v12    # "destId":I
    .end local v13    # "combinedArgs":Landroid/os/Bundle;
    .local v0, "finalNavOptions":Landroidx/navigation/NavOptions;
    :cond_10
    move-object/from16 v1, p4

    new-instance v2, Ljava/lang/IllegalStateException;

    .line 1744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No current destination found. Ensure a navigation graph has been set for NavController "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1745
    nop

    .line 1744
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1743
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public navigate(Landroid/net/Uri;)V
    .locals 2
    .param p1, "deepLink"    # Landroid/net/Uri;

    const-string v0, "deepLink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1822
    new-instance v0, Landroidx/navigation/NavDeepLinkRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDeepLinkRequest;)V

    .line 1823
    return-void
.end method

.method public navigate(Landroid/net/Uri;Landroidx/navigation/NavOptions;)V
    .locals 2
    .param p1, "deepLink"    # Landroid/net/Uri;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;

    const-string v0, "deepLink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1837
    new-instance v0, Landroidx/navigation/NavDeepLinkRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, v1}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 1838
    return-void
.end method

.method public navigate(Landroid/net/Uri;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 2
    .param p1, "deepLink"    # Landroid/net/Uri;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p3, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    const-string v0, "deepLink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1857
    new-instance v0, Landroidx/navigation/NavDeepLinkRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Landroidx/navigation/NavDeepLinkRequest;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 1858
    return-void
.end method

.method public navigate(Landroidx/navigation/NavDeepLinkRequest;)V
    .locals 1
    .param p1, "request"    # Landroidx/navigation/NavDeepLinkRequest;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1871
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;)V

    .line 1872
    return-void
.end method

.method public navigate(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;)V
    .locals 1
    .param p1, "request"    # Landroidx/navigation/NavDeepLinkRequest;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1886
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 1887
    return-void
.end method

.method public navigate(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 10
    .param p1, "request"    # Landroidx/navigation/NavDeepLinkRequest;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p3, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1906
    iget-object v0, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_2

    .line 1910
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-direct {p0, v0}, Landroidx/navigation/NavController;->getTopGraph(Lkotlin/collections/ArrayDeque;)Landroidx/navigation/NavGraph;

    move-result-object v0

    .line 1912
    .local v0, "currGraph":Landroidx/navigation/NavGraph;
    nop

    .line 1913
    nop

    .line 1914
    nop

    .line 1915
    nop

    .line 1916
    move-object v1, v0

    check-cast v1, Landroidx/navigation/NavDestination;

    .line 1912
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v2, v1}, Landroidx/navigation/NavGraph;->matchDeepLinkComprehensive(Landroidx/navigation/NavDeepLinkRequest;ZZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v1

    .line 1911
    nop

    .line 1918
    .local v1, "deepLinkMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    if-eqz v1, :cond_1

    .line 1919
    invoke-virtual {v1}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v2

    .line 1920
    .local v2, "destination":Landroidx/navigation/NavDestination;
    invoke-virtual {v1}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getMatchingArgs()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1921
    .local v3, "args":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v1}, Landroidx/navigation/NavDestination$DeepLinkMatch;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    .line 1923
    .local v4, "node":Landroidx/navigation/NavDestination;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object v6, v5

    .local v6, "$this$navigate_u24lambda_u2438":Landroid/content/Intent;
    const/4 v7, 0x0

    .line 1924
    .local v7, "$i$a$-apply-NavController$navigate$intent$1":I
    invoke-virtual {p1}, Landroidx/navigation/NavDeepLinkRequest;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p1}, Landroidx/navigation/NavDeepLinkRequest;->getMimeType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1925
    invoke-virtual {p1}, Landroidx/navigation/NavDeepLinkRequest;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1926
    nop

    .line 1923
    .end local v6    # "$this$navigate_u24lambda_u2438":Landroid/content/Intent;
    .end local v7    # "$i$a$-apply-NavController$navigate$intent$1":I
    nop

    .line 1922
    nop

    .line 1927
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "android-support-nav:controller:deepLinkIntent"

    move-object v7, v5

    check-cast v7, Landroid/os/Parcelable;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1928
    invoke-direct {p0, v4, v3, p2, p3}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 1935
    .end local v2    # "destination":Landroidx/navigation/NavDestination;
    .end local v3    # "args":Landroid/os/Bundle;
    .end local v4    # "node":Landroidx/navigation/NavDestination;
    .end local v5    # "intent":Landroid/content/Intent;
    return-void

    .line 1930
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Navigation destination that matches request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot be found in the navigation graph "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1932
    iget-object v4, p0, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    .line 1931
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1930
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1906
    .end local v0    # "currGraph":Landroidx/navigation/NavGraph;
    .end local v1    # "deepLinkMatch":Landroidx/navigation/NavDestination$DeepLinkMatch;
    :cond_2
    const/4 v0, 0x0

    .line 1907
    .local v0, "$i$a$-requireNotNull-NavController$navigate$3":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot navigate to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Navigation graph has not been set for NavController "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1908
    nop

    .line 1907
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1908
    nop

    .line 1906
    .end local v0    # "$i$a$-requireNotNull-NavController$navigate$3":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public navigate(Landroidx/navigation/NavDirections;)V
    .locals 3
    .param p1, "directions"    # Landroidx/navigation/NavDirections;

    const-string v0, "directions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2315
    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getActionId()I

    move-result v0

    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 2316
    return-void
.end method

.method public navigate(Landroidx/navigation/NavDirections;Landroidx/navigation/NavOptions;)V
    .locals 2
    .param p1, "directions"    # Landroidx/navigation/NavDirections;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;

    const-string v0, "directions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2326
    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getActionId()I

    move-result v0

    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V

    .line 2327
    return-void
.end method

.method public navigate(Landroidx/navigation/NavDirections;Landroidx/navigation/Navigator$Extras;)V
    .locals 3
    .param p1, "directions"    # Landroidx/navigation/NavDirections;
    .param p2, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    const-string v0, "directions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigatorExtras"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2337
    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getActionId()I

    move-result v0

    invoke-interface {p1}, Landroidx/navigation/NavDirections;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p2}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 2338
    return-void
.end method

.method public final navigate(Ljava/lang/Object;)V
    .locals 7
    .param p1, "route"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    .line 2427
    return-void
.end method

.method public final navigate(Ljava/lang/Object;Landroidx/navigation/NavOptions;)V
    .locals 7
    .param p1, "route"    # Ljava/lang/Object;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/navigation/NavOptions;",
            ")V"
        }
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    .line 2427
    return-void
.end method

.method public final navigate(Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 6
    .param p1, "route"    # Ljava/lang/Object;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p3, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            ")V"
        }
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2421
    invoke-direct {p0, p1}, Landroidx/navigation/NavController;->generateRouteFilled(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2422
    .local v0, "finalRoute":Ljava/lang/String;
    nop

    .line 2423
    sget-object v1, Landroidx/navigation/NavDeepLinkRequest$Builder;->Companion:Landroidx/navigation/NavDeepLinkRequest$Builder$Companion;

    sget-object v2, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v2, v0}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "$this$toUri$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2982
    .local v3, "$i$f$toUri":I
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "Uri.parse(this)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2423
    .end local v2    # "$this$toUri$iv":Ljava/lang/String;
    .end local v3    # "$i$f$toUri":I
    invoke-virtual {v1, v4}, Landroidx/navigation/NavDeepLinkRequest$Builder$Companion;->fromUri(Landroid/net/Uri;)Landroidx/navigation/NavDeepLinkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavDeepLinkRequest$Builder;->build()Landroidx/navigation/NavDeepLinkRequest;

    move-result-object v1

    .line 2424
    nop

    .line 2425
    nop

    .line 2422
    invoke-virtual {p0, v1, p2, p3}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 2427
    return-void
.end method

.method public final navigate(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1, "route"    # Ljava/lang/Object;
    .param p2, "builder"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavOptionsBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2397
    invoke-static {p2}, Landroidx/navigation/NavOptionsBuilderKt;->navOptions(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    .line 2398
    return-void
.end method

.method public final navigate(Ljava/lang/String;)V
    .locals 7
    .param p1, "route"    # Ljava/lang/String;

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    .line 2380
    return-void
.end method

.method public final navigate(Ljava/lang/String;Landroidx/navigation/NavOptions;)V
    .locals 7
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    .line 2380
    return-void
.end method

.method public final navigate(Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 5
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "navOptions"    # Landroidx/navigation/NavOptions;
    .param p3, "navigatorExtras"    # Landroidx/navigation/Navigator$Extras;

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2375
    nop

    .line 2376
    sget-object v0, Landroidx/navigation/NavDeepLinkRequest$Builder;->Companion:Landroidx/navigation/NavDeepLinkRequest$Builder$Companion;

    sget-object v1, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v1, p1}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "$this$toUri$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2981
    .local v2, "$i$f$toUri":I
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "Uri.parse(this)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2376
    .end local v1    # "$this$toUri$iv":Ljava/lang/String;
    .end local v2    # "$i$f$toUri":I
    invoke-virtual {v0, v3}, Landroidx/navigation/NavDeepLinkRequest$Builder$Companion;->fromUri(Landroid/net/Uri;)Landroidx/navigation/NavDeepLinkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavDeepLinkRequest$Builder;->build()Landroidx/navigation/NavDeepLinkRequest;

    move-result-object v0

    .line 2377
    nop

    .line 2378
    nop

    .line 2375
    invoke-virtual {p0, v0, p2, p3}, Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    .line 2380
    return-void
.end method

.method public final navigate(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "builder"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/navigation/NavOptionsBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2353
    invoke-static {p2}, Landroidx/navigation/NavOptionsBuilderKt;->navOptions(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    .line 2354
    return-void
.end method

.method public navigateUp()Z
    .locals 2

    .line 932
    invoke-direct {p0}, Landroidx/navigation/NavController;->getDestinationCountOnBackStack()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 933
    iget-object v0, p0, Landroidx/navigation/NavController;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 934
    .local v0, "extras":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "android-support-nav:controller:deepLinkIds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 935
    invoke-direct {p0}, Landroidx/navigation/NavController;->tryRelaunchUpToExplicitStack()Z

    move-result v1

    return v1

    .line 937
    :cond_2
    invoke-direct {p0}, Landroidx/navigation/NavController;->tryRelaunchUpToGeneratedStack()Z

    move-result v1

    return v1

    .line 940
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p0}, Landroidx/navigation/NavController;->popBackStack()Z

    move-result v0

    return v0
.end method

.method public popBackStack()Z
    .locals 2

    .line 448
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const/4 v0, 0x0

    goto :goto_0

    .line 452
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->popBackStack(IZ)Z

    move-result v0

    .line 448
    :goto_0
    return v0
.end method

.method public popBackStack(IZ)Z
    .locals 1
    .param p1, "destinationId"    # I
    .param p2, "inclusive"    # Z

    .line 466
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/navigation/NavController;->popBackStack(IZZ)Z

    move-result v0

    return v0
.end method

.method public popBackStack(IZZ)Z
    .locals 2
    .param p1, "destinationId"    # I
    .param p2, "inclusive"    # Z
    .param p3, "saveState"    # Z

    .line 487
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    move-result v0

    .line 490
    .local v0, "popped":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final popBackStack(Ljava/lang/Object;Z)Z
    .locals 7
    .param p1, "route"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z)Z"
        }
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->popBackStack$default(Landroidx/navigation/NavController;Ljava/lang/Object;ZZILjava/lang/Object;)Z

    move-result v0

    .line 570
    return v0
.end method

.method public final popBackStack(Ljava/lang/Object;ZZ)Z
    .locals 2
    .param p1, "route"    # Ljava/lang/Object;
    .param p2, "inclusive"    # Z
    .param p3, "saveState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;ZZ)Z"
        }
    .end annotation

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popBackStackInternal(Ljava/lang/Object;ZZ)Z

    move-result v0

    .line 569
    .local v0, "popped":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final popBackStack(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "inclusive"    # Z

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->popBackStack$default(Landroidx/navigation/NavController;Ljava/lang/String;ZZILjava/lang/Object;)Z

    move-result v0

    .line 517
    return v0
.end method

.method public final popBackStack(Ljava/lang/String;ZZ)Z
    .locals 2
    .param p1, "route"    # Ljava/lang/String;
    .param p2, "inclusive"    # Z
    .param p3, "saveState"    # Z

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavController;->popBackStackInternal(Ljava/lang/String;ZZ)Z

    move-result v0

    .line 516
    .local v0, "popped":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final synthetic popBackStack(Z)Z
    .locals 8
    .param p1, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3011
    .local v0, "$i$f$popBackStack":I
    nop

    .line 3013
    const/4 v1, 0x0

    .line 3011
    .local v1, "saveState$iv":Z
    const/4 v2, 0x0

    .line 3015
    .local v2, "$i$f$popBackStack":I
    const/4 v3, 0x6

    const-string v4, "T"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string v3, "kotlinx.serialization.serializer.simple"

    invoke-static {v3}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {v3}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Lkotlinx/serialization/KSerializer;)I

    move-result v3

    .line 3016
    .local v3, "id$iv":I
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavDestination;

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v3, v6}, Landroidx/navigation/NavController;->findDestinationComprehensive(Landroidx/navigation/NavDestination;IZ)Landroidx/navigation/NavDestination;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3020
    invoke-virtual {p0, v3, p1, v1}, Landroidx/navigation/NavController;->popBackStack(IZZ)Z

    move-result v1

    .end local v1    # "saveState$iv":Z
    .end local v2    # "$i$f$popBackStack":I
    .end local v3    # "id$iv":I
    return v1

    .line 3016
    .restart local v1    # "saveState$iv":Z
    .restart local v2    # "$i$f$popBackStack":I
    .restart local v3    # "id$iv":I
    :cond_0
    const/4 v5, 0x0

    .line 3017
    .local v5, "$i$a$-requireNotNull-NavController$popBackStack$1$iv":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Destination with route "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v4, Ljava/lang/Object;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " cannot be found in navigation graph "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3018
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v6

    .line 3017
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3018
    nop

    .line 3016
    .end local v5    # "$i$a$-requireNotNull-NavController$popBackStack$1$iv":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final synthetic popBackStack(ZZ)Z
    .locals 6
    .param p1, "inclusive"    # Z
    .param p2, "saveState"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZZ)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 538
    .local v0, "$i$f$popBackStack":I
    const/4 v1, 0x6

    const-string v2, "T"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string v1, "kotlinx.serialization.serializer.simple"

    invoke-static {v1}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-static {v1}, Landroidx/navigation/serialization/RouteSerializerKt;->generateHashCode(Lkotlinx/serialization/KSerializer;)I

    move-result v1

    .line 539
    .local v1, "id":I
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavDestination;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v1, v4}, Landroidx/navigation/NavController;->findDestinationComprehensive(Landroidx/navigation/NavDestination;IZ)Landroidx/navigation/NavDestination;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 543
    invoke-virtual {p0, v1, p1, p2}, Landroidx/navigation/NavController;->popBackStack(IZZ)Z

    move-result v2

    return v2

    .line 539
    :cond_0
    const/4 v3, 0x0

    .line 540
    .local v3, "$i$a$-requireNotNull-NavController$popBackStack$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destination with route "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " cannot be found in navigation graph "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 541
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getGraph()Landroidx/navigation/NavGraph;

    move-result-object v4

    .line 540
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 541
    nop

    .line 539
    .end local v3    # "$i$a$-requireNotNull-NavController$popBackStack$1":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final popBackStackFromNavigator$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;Lkotlin/jvm/functions/Function0;)V
    .locals 10
    .param p1, "popUpTo"    # Landroidx/navigation/NavBackStackEntry;
    .param p2, "onComplete"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/NavBackStackEntry;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "popUpTo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onComplete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 768
    .local v0, "popIndex":I
    if-gez v0, :cond_0

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring pop of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as it was not found on the current back stack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavController"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    return-void

    .line 772
    :cond_0
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 775
    nop

    .line 776
    iget-object v1, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lkotlin/collections/ArrayDeque;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    .line 777
    nop

    .line 778
    nop

    .line 775
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroidx/navigation/NavController;->popBackStackInternal(IZZ)Z

    .line 783
    :cond_1
    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Landroidx/navigation/NavController;->popEntryFromBackStack$default(Landroidx/navigation/NavController;Landroidx/navigation/NavBackStackEntry;ZLkotlin/collections/ArrayDeque;ILjava/lang/Object;)V

    .line 784
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 785
    invoke-direct {p0}, Landroidx/navigation/NavController;->updateOnBackPressedCallbackEnabled()V

    .line 786
    invoke-direct {p0}, Landroidx/navigation/NavController;->dispatchOnDestinationChanged()Z

    .line 787
    return-void
.end method

.method public final populateVisibleEntries$navigation_runtime_release()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation

    .line 1193
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 1195
    .local v1, "entries":Ljava/util/List;
    iget-object v2, v0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 2890
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v8, v5

    check-cast v8, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .local v8, "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    const/4 v9, 0x0

    .line 1196
    .local v9, "$i$a$-forEach-NavController$populateVisibleEntries$1":I
    move-object v10, v1

    check-cast v10, Ljava/util/Collection;

    .line 1197
    invoke-virtual {v8}, Landroidx/navigation/NavController$NavControllerNavigatorState;->getTransitionsInProgress()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v11

    invoke-interface {v11}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    .local v11, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 2891
    .local v12, "$i$f$filter":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    check-cast v13, Ljava/util/Collection;

    .local v13, "destination$iv$iv":Ljava/util/Collection;
    move-object v14, v11

    .local v14, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 2892
    .local v15, "$i$f$filterTo":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .local v7, "entry":Landroidx/navigation/NavBackStackEntry;
    const/16 v18, 0x0

    .line 1198
    .local v18, "$i$a$-filter-NavController$populateVisibleEntries$1$1":I
    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 1199
    move-object/from16 v19, v2

    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .local v19, "$this$forEach$iv":Ljava/lang/Iterable;
    invoke-virtual {v7}, Landroidx/navigation/NavBackStackEntry;->getMaxLifecycle()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v2

    move/from16 v20, v3

    .end local v3    # "$i$f$forEach":I
    .local v20, "$i$f$forEach":I
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    .line 1198
    .end local v19    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v20    # "$i$f$forEach":I
    .restart local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v3    # "$i$f$forEach":I
    :cond_0
    move-object/from16 v19, v2

    move/from16 v20, v3

    .line 1199
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    .restart local v19    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v20    # "$i$f$forEach":I
    :cond_1
    const/4 v2, 0x0

    .line 2892
    .end local v7    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v18    # "$i$a$-filter-NavController$populateVisibleEntries$1$1":I
    :goto_2
    if-eqz v2, :cond_2

    invoke-interface {v13, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v2, v19

    move/from16 v3, v20

    goto :goto_1

    .line 2893
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    .end local v19    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v20    # "$i$f$forEach":I
    .restart local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v3    # "$i$f$forEach":I
    :cond_3
    move-object/from16 v19, v2

    move/from16 v20, v3

    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    .end local v13    # "destination$iv$iv":Ljava/util/Collection;
    .end local v14    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$filterTo":I
    .restart local v19    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v20    # "$i$f$forEach":I
    move-object v2, v13

    check-cast v2, Ljava/util/List;

    .line 2891
    nop

    .end local v11    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$filter":I
    check-cast v2, Ljava/lang/Iterable;

    .line 1196
    invoke-static {v10, v2}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 1201
    nop

    .line 2890
    .end local v8    # "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v9    # "$i$a$-forEach-NavController$populateVisibleEntries$1":I
    move-object/from16 v2, v19

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 2894
    .end local v19    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v20    # "$i$f$forEach":I
    .restart local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v3    # "$i$f$forEach":I
    :cond_4
    move-object/from16 v19, v2

    move/from16 v20, v3

    .line 1204
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    .line 1205
    iget-object v3, v0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 2895
    .local v4, "$i$f$filter":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 2896
    .local v7, "$i$f$filterTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroidx/navigation/NavBackStackEntry;

    .local v10, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v11, 0x0

    .line 1206
    .local v11, "$i$a$-filter-NavController$populateVisibleEntries$2":I
    invoke-interface {v1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v10}, Landroidx/navigation/NavBackStackEntry;->getMaxLifecycle()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v12

    sget-object v13, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v12, v13}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v10, 0x1

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    .line 2896
    .end local v10    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v11    # "$i$a$-filter-NavController$populateVisibleEntries$2":I
    :goto_4
    if-eqz v10, :cond_5

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2897
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_7
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filterTo":I
    check-cast v5, Ljava/util/List;

    .line 2895
    nop

    .end local v3    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filter":I
    check-cast v5, Ljava/lang/Iterable;

    .line 1204
    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 1208
    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 2898
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 2899
    .local v6, "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Landroidx/navigation/NavBackStackEntry;

    .local v9, "it":Landroidx/navigation/NavBackStackEntry;
    const/4 v10, 0x0

    .line 1208
    .local v10, "$i$a$-filter-NavController$populateVisibleEntries$3":I
    invoke-virtual {v9}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v11

    instance-of v11, v11, Landroidx/navigation/NavGraph;

    .line 2899
    .end local v9    # "it":Landroidx/navigation/NavBackStackEntry;
    .end local v10    # "$i$a$-filter-NavController$populateVisibleEntries$3":I
    if-nez v11, :cond_8

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2900
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_9
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 2898
    nop

    .line 1208
    .end local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    return-object v4
.end method

.method public removeOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/navigation/NavController$OnDestinationChangedListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Landroidx/navigation/NavController;->onDestinationChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 436
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 19
    .param p1, "navState"    # Landroid/os/Bundle;

    .line 2524
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 2525
    return-void

    .line 2527
    :cond_0
    iget-object v2, v0, Landroidx/navigation/NavController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2528
    const-string v2, "android-support-nav:controller:navigatorState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Landroidx/navigation/NavController;->navigatorStateToRestore:Landroid/os/Bundle;

    .line 2529
    const-string v2, "android-support-nav:controller:backStack"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v0, Landroidx/navigation/NavController;->backStackToRestore:[Landroid/os/Parcelable;

    .line 2530
    iget-object v2, v0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2531
    const-string v2, "android-support-nav:controller:backStackDestIds"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 2532
    .local v2, "backStackDestIds":[I
    const-string v3, "android-support-nav:controller:backStackIds"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2533
    .local v3, "backStackIds":Ljava/util/ArrayList;
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 2534
    move-object v4, v2

    .local v4, "$this$forEachIndexed$iv":[I
    const/4 v5, 0x0

    .line 2986
    .local v5, "$i$f$forEachIndexed":I
    const/4 v6, 0x0

    .line 2987
    .local v6, "index$iv":I
    array-length v7, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_1

    aget v9, v4, v8

    .local v9, "item$iv":I
    add-int/lit8 v10, v6, 0x1

    .local v6, "index":I
    .local v10, "index$iv":I
    move v11, v9

    .local v11, "id":I
    const/4 v12, 0x0

    .local v12, "$i$a$-forEachIndexed-NavController$restoreState$1":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 2534
    iget-object v14, v0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2987
    .end local v6    # "index":I
    .end local v11    # "id":I
    .end local v12    # "$i$a$-forEachIndexed-NavController$restoreState$1":I
    nop

    .end local v9    # "item$iv":I
    add-int/lit8 v8, v8, 0x1

    move v6, v10

    goto :goto_0

    .line 2988
    .end local v10    # "index$iv":I
    .local v6, "index$iv":I
    :cond_1
    nop

    .line 2536
    .end local v4    # "$this$forEachIndexed$iv":[I
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v6    # "index$iv":I
    :cond_2
    const-string v4, "android-support-nav:controller:backStackStates"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2537
    .local v4, "backStackStateIds":Ljava/util/ArrayList;
    if-eqz v4, :cond_6

    move-object v5, v4

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 2989
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .local v9, "id":Ljava/lang/String;
    const/4 v10, 0x0

    .line 2538
    .local v10, "$i$a$-forEach-NavController$restoreState$2":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "android-support-nav:controller:backStackStates:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v11

    .line 2539
    .local v11, "backStackState":[Landroid/os/Parcelable;
    if-eqz v11, :cond_4

    .line 2540
    iget-object v12, v0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    const-string v13, "id"

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2541
    new-instance v13, Lkotlin/collections/ArrayDeque;

    array-length v14, v11

    invoke-direct {v13, v14}, Lkotlin/collections/ArrayDeque;-><init>(I)V

    move-object v14, v13

    .local v14, "$this$restoreState_u24lambda_u2459_u24lambda_u2458":Lkotlin/collections/ArrayDeque;
    const/4 v15, 0x0

    .line 2542
    .local v15, "$i$a$-apply-NavController$restoreState$2$1":I
    invoke-static {v11}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v2

    .end local v2    # "backStackDestIds":[I
    .local v18, "backStackDestIds":[I
    move-object/from16 v2, v17

    check-cast v2, Landroid/os/Parcelable;

    .line 2543
    .local v2, "parcelable":Landroid/os/Parcelable;
    move-object/from16 v17, v3

    .end local v3    # "backStackIds":Ljava/util/ArrayList;
    .local v17, "backStackIds":Ljava/util/ArrayList;
    const-string v3, "null cannot be cast to non-null type androidx.navigation.NavBackStackEntryState"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    check-cast v3, Landroidx/navigation/NavBackStackEntryState;

    invoke-virtual {v14, v3}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    goto :goto_2

    .line 2545
    .end local v17    # "backStackIds":Ljava/util/ArrayList;
    .end local v18    # "backStackDestIds":[I
    .local v2, "backStackDestIds":[I
    .restart local v3    # "backStackIds":Ljava/util/ArrayList;
    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    .line 2541
    .end local v2    # "backStackDestIds":[I
    .end local v3    # "backStackIds":Ljava/util/ArrayList;
    .end local v14    # "$this$restoreState_u24lambda_u2459_u24lambda_u2458":Lkotlin/collections/ArrayDeque;
    .end local v15    # "$i$a$-apply-NavController$restoreState$2$1":I
    .restart local v17    # "backStackIds":Ljava/util/ArrayList;
    .restart local v18    # "backStackDestIds":[I
    nop

    .line 2540
    invoke-interface {v12, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2539
    .end local v17    # "backStackIds":Ljava/util/ArrayList;
    .end local v18    # "backStackDestIds":[I
    .restart local v2    # "backStackDestIds":[I
    .restart local v3    # "backStackIds":Ljava/util/ArrayList;
    :cond_4
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    .line 2547
    .end local v2    # "backStackDestIds":[I
    .end local v3    # "backStackIds":Ljava/util/ArrayList;
    .restart local v17    # "backStackIds":Ljava/util/ArrayList;
    .restart local v18    # "backStackDestIds":[I
    :goto_3
    nop

    .line 2989
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "$i$a$-forEach-NavController$restoreState$2":I
    .end local v11    # "backStackState":[Landroid/os/Parcelable;
    move-object/from16 v3, v17

    move-object/from16 v2, v18

    .end local v8    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 2990
    .end local v17    # "backStackIds":Ljava/util/ArrayList;
    .end local v18    # "backStackDestIds":[I
    .restart local v2    # "backStackDestIds":[I
    .restart local v3    # "backStackIds":Ljava/util/ArrayList;
    :cond_5
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    .end local v2    # "backStackDestIds":[I
    .end local v3    # "backStackIds":Ljava/util/ArrayList;
    .end local v5    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    .restart local v17    # "backStackIds":Ljava/util/ArrayList;
    .restart local v18    # "backStackDestIds":[I
    goto :goto_4

    .line 2537
    .end local v17    # "backStackIds":Ljava/util/ArrayList;
    .end local v18    # "backStackDestIds":[I
    .restart local v2    # "backStackDestIds":[I
    .restart local v3    # "backStackIds":Ljava/util/ArrayList;
    :cond_6
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    .line 2548
    .end local v2    # "backStackDestIds":[I
    .end local v3    # "backStackIds":Ljava/util/ArrayList;
    .restart local v17    # "backStackIds":Ljava/util/ArrayList;
    .restart local v18    # "backStackDestIds":[I
    :goto_4
    const-string v2, "android-support-nav:controller:deepLinkHandled"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    .line 2549
    return-void
.end method

.method public saveState()Landroid/os/Bundle;
    .locals 17

    .line 2448
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2449
    .local v1, "b":Landroid/os/Bundle;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2450
    .local v2, "navigatorNames":Ljava/util/ArrayList;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2451
    .local v3, "navigatorState":Landroid/os/Bundle;
    iget-object v4, v0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    invoke-virtual {v4}, Landroidx/navigation/NavigatorProvider;->getNavigators()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "name":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/Navigator;

    .line 2452
    .local v5, "value":Landroidx/navigation/Navigator;
    invoke-virtual {v5}, Landroidx/navigation/Navigator;->onSaveState()Landroid/os/Bundle;

    move-result-object v7

    .line 2453
    .local v7, "savedState":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 2454
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2455
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .end local v5    # "value":Landroidx/navigation/Navigator;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "savedState":Landroid/os/Bundle;
    goto :goto_0

    .line 2458
    :cond_1
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2459
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v1, v4

    .line 2460
    const-string v4, "android-support-nav:controller:navigatorState:names"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2461
    const-string v4, "android-support-nav:controller:navigatorState"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2463
    :cond_2
    iget-object v4, v0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2464
    if-nez v1, :cond_3

    .line 2465
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v1, v4

    .line 2467
    :cond_3
    iget-object v4, v0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v4

    new-array v4, v4, [Landroid/os/Parcelable;

    .line 2468
    .local v4, "backStack":[Landroid/os/Parcelable;
    const/4 v5, 0x0

    .line 2469
    .local v5, "index":I
    iget-object v6, v0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/navigation/NavBackStackEntry;

    .line 2470
    .local v7, "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "index":I
    .local v8, "index":I
    new-instance v9, Landroidx/navigation/NavBackStackEntryState;

    invoke-direct {v9, v7}, Landroidx/navigation/NavBackStackEntryState;-><init>(Landroidx/navigation/NavBackStackEntry;)V

    aput-object v9, v4, v5

    move v5, v8

    .end local v7    # "backStackEntry":Landroidx/navigation/NavBackStackEntry;
    goto :goto_1

    .line 2472
    .end local v8    # "index":I
    .restart local v5    # "index":I
    :cond_4
    const-string v6, "android-support-nav:controller:backStack"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2474
    .end local v4    # "backStack":[Landroid/os/Parcelable;
    .end local v5    # "index":I
    :cond_5
    iget-object v4, v0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2475
    if-nez v1, :cond_6

    .line 2476
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v1, v4

    .line 2478
    :cond_6
    iget-object v4, v0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 2479
    .local v4, "backStackDestIds":[I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2480
    .local v5, "backStackIds":Ljava/util/ArrayList;
    const/4 v6, 0x0

    .line 2481
    .local v6, "index":I
    iget-object v7, v0, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .local v9, "destId":I
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2482
    .local v8, "id":Ljava/lang/String;
    add-int/lit8 v10, v6, 0x1

    .end local v6    # "index":I
    .local v10, "index":I
    aput v9, v4, v6

    .line 2483
    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v6, v10

    goto :goto_2

    .line 2485
    .end local v8    # "id":Ljava/lang/String;
    .end local v9    # "destId":I
    .end local v10    # "index":I
    .restart local v6    # "index":I
    :cond_7
    const-string v7, "android-support-nav:controller:backStackDestIds"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2486
    const-string v7, "android-support-nav:controller:backStackIds"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2488
    .end local v4    # "backStackDestIds":[I
    .end local v5    # "backStackIds":Ljava/util/ArrayList;
    .end local v6    # "index":I
    :cond_8
    iget-object v4, v0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 2489
    if-nez v1, :cond_9

    .line 2490
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v1, v4

    .line 2492
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2493
    .local v4, "backStackStateIds":Ljava/util/ArrayList;
    iget-object v5, v0, Landroidx/navigation/NavController;->backStackStates:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "id":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/collections/ArrayDeque;

    .line 2494
    .local v6, "backStackStates":Lkotlin/collections/ArrayDeque;
    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2495
    invoke-virtual {v6}, Lkotlin/collections/ArrayDeque;->size()I

    move-result v8

    new-array v8, v8, [Landroid/os/Parcelable;

    .line 2496
    .local v8, "states":[Landroid/os/Parcelable;
    move-object v9, v6

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 2983
    .local v10, "$i$f$forEachIndexed":I
    const/4 v11, 0x0

    .line 2984
    .local v11, "index$iv":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "item$iv":Ljava/lang/Object;
    add-int/lit8 v14, v11, 0x1

    .end local v11    # "index$iv":I
    .local v14, "index$iv":I
    if-gez v11, :cond_a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_a
    move-object v15, v13

    check-cast v15, Landroidx/navigation/NavBackStackEntryState;

    .local v11, "stateIndex":I
    .local v15, "backStackState":Landroidx/navigation/NavBackStackEntryState;
    const/16 v16, 0x0

    .line 2497
    .local v16, "$i$a$-forEachIndexed-NavController$saveState$1":I
    aput-object v15, v8, v11

    .line 2498
    nop

    .line 2984
    .end local v11    # "stateIndex":I
    .end local v15    # "backStackState":Landroidx/navigation/NavBackStackEntryState;
    .end local v16    # "$i$a$-forEachIndexed-NavController$saveState$1":I
    move v11, v14

    .end local v13    # "item$iv":Ljava/lang/Object;
    goto :goto_4

    .line 2985
    .end local v14    # "index$iv":I
    .local v11, "index$iv":I
    :cond_b
    nop

    .line 2499
    .end local v9    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v11    # "index$iv":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android-support-nav:controller:backStackStates:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .end local v6    # "backStackStates":Lkotlin/collections/ArrayDeque;
    .end local v7    # "id":Ljava/lang/String;
    .end local v8    # "states":[Landroid/os/Parcelable;
    goto :goto_3

    .line 2501
    :cond_c
    const-string v5, "android-support-nav:controller:backStackStates"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2503
    .end local v4    # "backStackStateIds":Ljava/util/ArrayList;
    :cond_d
    iget-boolean v4, v0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    if-eqz v4, :cond_f

    .line 2504
    if-nez v1, :cond_e

    .line 2505
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v1, v4

    .line 2507
    :cond_e
    const-string v4, "android-support-nav:controller:deepLinkHandled"

    iget-boolean v5, v0, Landroidx/navigation/NavController;->deepLinkHandled:Z

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2509
    :cond_f
    return-object v1
.end method

.method public setGraph(I)V
    .locals 2
    .param p1, "graphResId"    # I

    .line 1234
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getNavInflater()Landroidx/navigation/NavInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    .line 1235
    return-void
.end method

.method public setGraph(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "graphResId"    # I
    .param p2, "startDestinationArgs"    # Landroid/os/Bundle;

    .line 1252
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getNavInflater()Landroidx/navigation/NavInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    .line 1253
    return-void
.end method

.method public setGraph(Landroidx/navigation/NavGraph;)V
    .locals 1
    .param p1, "graph"    # Landroidx/navigation/NavGraph;

    const-string v0, "graph"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method public setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V
    .locals 20
    .param p1, "graph"    # Landroidx/navigation/NavGraph;
    .param p2, "startDestinationArgs"    # Landroid/os/Bundle;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const-string v0, "graph"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1269
    iget-object v0, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1270
    iget-object v0, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_1

    move-object v8, v0

    .local v8, "previousGraph":Landroidx/navigation/NavGraph;
    const/4 v9, 0x0

    .line 1273
    .local v9, "$i$a$-let-NavController$setGraph$1":I
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Landroidx/navigation/NavController;->backStackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v10, v0

    .line 1274
    .local v10, "savedBackStackIds":Ljava/util/ArrayList;
    move-object v0, v10

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 2901
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    .local v4, "id":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 1274
    .local v5, "$i$a$-forEach-NavController$setGraph$1$1":I
    const-string v11, "id"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v6, v11}, Landroidx/navigation/NavController;->clearBackStackInternal(I)Z

    .line 2901
    .end local v4    # "id":Ljava/lang/Integer;
    .end local v5    # "$i$a$-forEach-NavController$setGraph$1$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 2902
    :cond_0
    nop

    .line 1276
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    invoke-virtual {v8}, Landroidx/navigation/NavGraph;->getId()I

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Landroidx/navigation/NavController;->popBackStackInternal$default(Landroidx/navigation/NavController;IZZILjava/lang/Object;)Z

    .line 1270
    .end local v8    # "previousGraph":Landroidx/navigation/NavGraph;
    .end local v9    # "$i$a$-let-NavController$setGraph$1":I
    .end local v10    # "savedBackStackIds":Ljava/util/ArrayList;
    nop

    .line 1278
    :cond_1
    iput-object v7, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    .line 1279
    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroidx/navigation/NavController;->onGraphCreated(Landroid/os/Bundle;)V

    goto/16 :goto_6

    .line 1282
    :cond_2
    move-object/from16 v0, p2

    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavGraph;->getNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_3

    .line 1283
    invoke-virtual/range {p1 .. p1}, Landroidx/navigation/NavGraph;->getNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavDestination;

    .line 1284
    .local v3, "newDestination":Landroidx/navigation/NavDestination;
    iget-object v4, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Landroidx/navigation/NavGraph;->getNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v4

    .line 1285
    .local v4, "key":I
    iget-object v5, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/navigation/NavGraph;->getNodes()Landroidx/collection/SparseArrayCompat;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroidx/collection/SparseArrayCompat;->replace(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1282
    .end local v3    # "newDestination":Landroidx/navigation/NavDestination;
    .end local v4    # "key":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1288
    .end local v1    # "i":I
    :cond_3
    iget-object v1, v6, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 2903
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .local v5, "entry":Landroidx/navigation/NavBackStackEntry;
    const/4 v8, 0x0

    .line 1290
    .local v8, "$i$a$-forEach-NavController$setGraph$2":I
    sget-object v9, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/navigation/NavDestination$Companion;->getHierarchy(Landroidx/navigation/NavDestination;)Lkotlin/sequences/Sequence;

    move-result-object v9

    invoke-static {v9}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->asReversed(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    .line 1292
    .local v9, "hierarchy":Ljava/util/List;
    move-object v10, v9

    check-cast v10, Ljava/lang/Iterable;

    .local v10, "$this$fold$iv":Ljava/lang/Iterable;
    iget-object v11, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .local v11, "initial$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 2904
    .local v12, "$i$f$fold":I
    move-object v13, v11

    .line 2905
    .local v13, "accumulator$iv":Ljava/lang/Object;
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .local v15, "element$iv":Ljava/lang/Object;
    move-object v0, v15

    check-cast v0, Landroidx/navigation/NavDestination;

    .local v0, "oldDest":Landroidx/navigation/NavDestination;
    move-object/from16 v16, v13

    check-cast v16, Landroidx/navigation/NavDestination;

    .local v16, "newDest":Landroidx/navigation/NavDestination;
    move-object/from16 v17, v16

    .end local v16    # "newDest":Landroidx/navigation/NavDestination;
    .local v17, "newDest":Landroidx/navigation/NavDestination;
    const/16 v16, 0x0

    .line 1293
    .local v16, "$i$a$-fold-NavController$setGraph$2$newDestination$1":I
    move-object/from16 v18, v1

    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .local v18, "$this$forEach$iv":Ljava/lang/Iterable;
    iget-object v1, v6, Landroidx/navigation/NavController;->_graph:Landroidx/navigation/NavGraph;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v1, v17

    .end local v17    # "newDest":Landroidx/navigation/NavDestination;
    .local v1, "newDest":Landroidx/navigation/NavDestination;
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1295
    move-object/from16 v19, v1

    move/from16 v17, v2

    goto :goto_4

    .line 1293
    .end local v1    # "newDest":Landroidx/navigation/NavDestination;
    .restart local v17    # "newDest":Landroidx/navigation/NavDestination;
    :cond_4
    move-object/from16 v1, v17

    .line 1296
    .end local v17    # "newDest":Landroidx/navigation/NavDestination;
    .restart local v1    # "newDest":Landroidx/navigation/NavDestination;
    :cond_5
    move/from16 v17, v2

    .end local v2    # "$i$f$forEach":I
    .local v17, "$i$f$forEach":I
    instance-of v2, v1, Landroidx/navigation/NavGraph;

    if-eqz v2, :cond_6

    .line 1298
    move-object v2, v1

    check-cast v2, Landroidx/navigation/NavGraph;

    move-object/from16 v19, v1

    .end local v1    # "newDest":Landroidx/navigation/NavDestination;
    .local v19, "newDest":Landroidx/navigation/NavDestination;
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroidx/navigation/NavGraph;->findNode(I)Landroidx/navigation/NavDestination;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_5

    .line 1301
    .end local v19    # "newDest":Landroidx/navigation/NavDestination;
    .restart local v1    # "newDest":Landroidx/navigation/NavDestination;
    :cond_6
    move-object/from16 v19, v1

    .line 1302
    .end local v1    # "newDest":Landroidx/navigation/NavDestination;
    .restart local v19    # "newDest":Landroidx/navigation/NavDestination;
    :goto_4
    move-object/from16 v1, v19

    :goto_5
    nop

    .line 2905
    .end local v0    # "oldDest":Landroidx/navigation/NavDestination;
    .end local v16    # "$i$a$-fold-NavController$setGraph$2$newDestination$1":I
    .end local v19    # "newDest":Landroidx/navigation/NavDestination;
    move-object v13, v1

    move-object/from16 v0, p2

    move/from16 v2, v17

    move-object/from16 v1, v18

    .end local v15    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .line 2906
    .end local v17    # "$i$f$forEach":I
    .end local v18    # "$this$forEach$iv":Ljava/lang/Iterable;
    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v2    # "$i$f$forEach":I
    :cond_7
    move-object/from16 v18, v1

    move/from16 v17, v2

    .line 1292
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    .end local v10    # "$this$fold$iv":Ljava/lang/Iterable;
    .end local v11    # "initial$iv":Ljava/lang/Object;
    .end local v12    # "$i$f$fold":I
    .end local v13    # "accumulator$iv":Ljava/lang/Object;
    .restart local v17    # "$i$f$forEach":I
    .restart local v18    # "$this$forEach$iv":Ljava/lang/Iterable;
    move-object v0, v13

    check-cast v0, Landroidx/navigation/NavDestination;

    .line 1291
    nop

    .line 1304
    .local v0, "newDestination":Landroidx/navigation/NavDestination;
    invoke-virtual {v5, v0}, Landroidx/navigation/NavBackStackEntry;->setDestination(Landroidx/navigation/NavDestination;)V

    .line 1305
    nop

    .line 2903
    .end local v0    # "newDestination":Landroidx/navigation/NavDestination;
    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v8    # "$i$a$-forEach-NavController$setGraph$2":I
    .end local v9    # "hierarchy":Ljava/util/List;
    move-object/from16 v0, p2

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_2

    .line 2907
    .end local v17    # "$i$f$forEach":I
    .end local v18    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v2    # "$i$f$forEach":I
    :cond_8
    move-object/from16 v18, v1

    move/from16 v17, v2

    .line 1307
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    :goto_6
    return-void
.end method

.method public final setHostLifecycleState$navigation_runtime_release(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/lifecycle/Lifecycle$State;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Landroidx/navigation/NavController;->hostLifecycleState:Landroidx/lifecycle/Lifecycle$State;

    .line 191
    return-void
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1, "owner"    # Landroidx/lifecycle/LifecycleOwner;

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2553
    iget-object v0, p0, Landroidx/navigation/NavController;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2554
    return-void

    .line 2556
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/navigation/NavController;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 2557
    :cond_1
    iput-object p1, p0, Landroidx/navigation/NavController;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 2558
    invoke-interface {p1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Landroidx/navigation/NavController;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 2559
    return-void
.end method

.method public setNavigatorProvider(Landroidx/navigation/NavigatorProvider;)V
    .locals 2
    .param p1, "navigatorProvider"    # Landroidx/navigation/NavigatorProvider;

    const-string v0, "navigatorProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iput-object p1, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .line 253
    return-void

    .line 2863
    :cond_0
    const/4 v0, 0x0

    .line 251
    .local v0, "$i$a$-check-NavController$navigatorProvider$1":I
    nop

    .end local v0    # "$i$a$-check-NavController$navigatorProvider$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NavigatorProvider must be set before setGraph call"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnBackPressedDispatcher(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 4
    .param p1, "dispatcher"    # Landroidx/activity/OnBackPressedDispatcher;

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2563
    iget-object v0, p0, Landroidx/navigation/NavController;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2564
    return-void

    .line 2567
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz v0, :cond_1

    .line 2566
    nop

    .line 2571
    .local v0, "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    iget-object v1, p0, Landroidx/navigation/NavController;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->remove()V

    .line 2573
    iput-object p1, p0, Landroidx/navigation/NavController;->onBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    .line 2574
    iget-object v1, p0, Landroidx/navigation/NavController;->onBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p1, v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    .line 2578
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    .local v1, "$this$setOnBackPressedDispatcher_u24lambda_u2461":Landroidx/lifecycle/Lifecycle;
    const/4 v2, 0x0

    .line 2579
    .local v2, "$i$a$-apply-NavController$setOnBackPressedDispatcher$1":I
    iget-object v3, p0, Landroidx/navigation/NavController;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 2580
    iget-object v3, p0, Landroidx/navigation/NavController;->lifecycleObserver:Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 2581
    nop

    .line 2578
    .end local v1    # "$this$setOnBackPressedDispatcher_u24lambda_u2461":Landroidx/lifecycle/Lifecycle;
    .end local v2    # "$i$a$-apply-NavController$setOnBackPressedDispatcher$1":I
    nop

    .line 2582
    return-void

    .line 2567
    .end local v0    # "lifecycleOwner":Landroidx/lifecycle/LifecycleOwner;
    :cond_1
    const/4 v0, 0x0

    .line 2568
    .local v0, "$i$a$-checkNotNull-NavController$setOnBackPressedDispatcher$lifecycleOwner$1":I
    nop

    .line 2567
    .end local v0    # "$i$a$-checkNotNull-NavController$setOnBackPressedDispatcher$lifecycleOwner$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V
    .locals 2
    .param p1, "viewModelStore"    # Landroidx/lifecycle/ViewModelStore;

    const-string v0, "viewModelStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2597
    iget-object v0, p0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    sget-object v1, Landroidx/navigation/NavControllerViewModel;->Companion:Landroidx/navigation/NavControllerViewModel$Companion;

    invoke-virtual {v1, p1}, Landroidx/navigation/NavControllerViewModel$Companion;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/navigation/NavControllerViewModel;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2598
    return-void

    .line 2600
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2601
    sget-object v0, Landroidx/navigation/NavControllerViewModel;->Companion:Landroidx/navigation/NavControllerViewModel$Companion;

    invoke-virtual {v0, p1}, Landroidx/navigation/NavControllerViewModel$Companion;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/navigation/NavControllerViewModel;

    move-result-object v0

    iput-object v0, p0, Landroidx/navigation/NavController;->viewModel:Landroidx/navigation/NavControllerViewModel;

    .line 2602
    return-void

    .line 2863
    :cond_1
    const/4 v0, 0x0

    .line 2600
    .local v0, "$i$a$-check-NavController$setViewModelStore$1":I
    nop

    .end local v0    # "$i$a$-check-NavController$setViewModelStore$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewModelStore should be set before setGraph call"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final unlinkChildFromParent$navigation_runtime_release(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;
    .locals 5
    .param p1, "child"    # Landroidx/navigation/NavBackStackEntry;

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Landroidx/navigation/NavController;->childToParentEntries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 166
    .local v0, "parent":Landroidx/navigation/NavBackStackEntry;
    :cond_0
    iget-object v2, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 167
    .local v1, "count":Ljava/lang/Integer;
    :cond_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_4

    .line 169
    iget-object v2, p0, Landroidx/navigation/NavController;->_navigatorProvider:Landroidx/navigation/NavigatorProvider;

    .local v2, "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    invoke-virtual {v0}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v3

    .local v3, "name$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2864
    .local v4, "$i$f$get":I
    invoke-virtual {v2, v3}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v2

    .line 169
    .end local v2    # "$this$get$iv":Landroidx/navigation/NavigatorProvider;
    .end local v3    # "name$iv":Ljava/lang/String;
    .end local v4    # "$i$f$get":I
    nop

    .line 168
    nop

    .line 170
    .local v2, "navGraphNavigator":Landroidx/navigation/Navigator;
    iget-object v3, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation/NavController$NavControllerNavigatorState;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Landroidx/navigation/NavController$NavControllerNavigatorState;->markTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    .line 171
    :cond_3
    iget-object v3, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .end local v2    # "navGraphNavigator":Landroidx/navigation/Navigator;
    :cond_4
    :goto_0
    return-object v0
.end method

.method public final updateBackStackLifecycle$navigation_runtime_release()V
    .locals 15

    .line 1103
    iget-object v0, p0, Landroidx/navigation/NavController;->backQueue:Lkotlin/collections/ArrayDeque;

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 1104
    .local v0, "backStack":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1106
    return-void

    .line 1111
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v1

    .line 1112
    .local v1, "nextResumed":Landroidx/navigation/NavDestination;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 1113
    .local v2, "nextStarted":Ljava/util/List;
    instance-of v3, v1, Landroidx/navigation/FloatingWindow;

    if-eqz v3, :cond_2

    .line 1116
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1117
    .local v3, "iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1118
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v4}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v4

    .line 1122
    .local v4, "destination":Landroidx/navigation/NavDestination;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    instance-of v5, v4, Landroidx/navigation/FloatingWindow;

    if-nez v5, :cond_1

    instance-of v5, v4, Landroidx/navigation/NavGraph;

    if-nez v5, :cond_1

    .line 1125
    nop

    .line 1133
    .end local v3    # "iterator":Ljava/util/Iterator;
    .end local v4    # "destination":Landroidx/navigation/NavDestination;
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1134
    .local v3, "upwardStateTransitions":Ljava/util/HashMap;
    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1135
    .local v4, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1136
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 1137
    .local v5, "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getMaxLifecycle()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v6

    .line 1138
    .local v6, "currentMaxLifecycle":Landroidx/lifecycle/Lifecycle$State;
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v7

    .line 1139
    .local v7, "destination":Landroidx/navigation/NavDestination;
    if-eqz v1, :cond_9

    invoke-virtual {v7}, Landroidx/navigation/NavDestination;->getId()I

    move-result v8

    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getId()I

    move-result v9

    if-ne v8, v9, :cond_9

    .line 1142
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v6, v8, :cond_6

    .line 1144
    invoke-virtual {p0}, Landroidx/navigation/NavController;->getNavigatorProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v8

    .line 1145
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/navigation/NavDestination;->getNavigatorName()Ljava/lang/String;

    move-result-object v11

    .line 1144
    invoke-virtual {v8, v11}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/String;)Landroidx/navigation/Navigator;

    move-result-object v8

    .line 1143
    nop

    .line 1147
    .local v8, "navigator":Landroidx/navigation/Navigator;
    iget-object v11, p0, Landroidx/navigation/NavController;->navigatorState:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/navigation/NavController$NavControllerNavigatorState;

    .line 1148
    .local v11, "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Landroidx/navigation/NavController$NavControllerNavigatorState;->getTransitionsInProgress()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-interface {v12}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    if-eqz v12, :cond_3

    invoke-interface {v12, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 1149
    .local v12, "transitioning":Ljava/lang/Boolean;
    :goto_1
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    iget-object v13, p0, Landroidx/navigation/NavController;->parentToChildCount:Ljava/util/Map;

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    if-nez v13, :cond_4

    move v13, v9

    goto :goto_2

    :cond_4
    move v13, v10

    :goto_2
    if-nez v13, :cond_5

    .line 1150
    move-object v13, v3

    check-cast v13, Ljava/util/Map;

    sget-object v14, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v13, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1152
    :cond_5
    move-object v13, v3

    check-cast v13, Ljava/util/Map;

    sget-object v14, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v13, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    .end local v8    # "navigator":Landroidx/navigation/Navigator;
    .end local v11    # "state":Landroidx/navigation/NavController$NavControllerNavigatorState;
    .end local v12    # "transitioning":Ljava/lang/Boolean;
    :cond_6
    :goto_3
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/navigation/NavDestination;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->getId()I

    move-result v8

    invoke-virtual {v7}, Landroidx/navigation/NavDestination;->getId()I

    move-result v11

    if-ne v8, v11, :cond_7

    goto :goto_4

    :cond_7
    move v9, v10

    :goto_4
    if-eqz v9, :cond_8

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    .line 1156
    :cond_8
    invoke-virtual {v1}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v8

    move-object v1, v8

    check-cast v1, Landroidx/navigation/NavDestination;

    goto/16 :goto_0

    .line 1157
    :cond_9
    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v7}, Landroidx/navigation/NavDestination;->getId()I

    move-result v8

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/navigation/NavDestination;

    invoke-virtual {v9}, Landroidx/navigation/NavDestination;->getId()I

    move-result v9

    if-ne v8, v9, :cond_e

    .line 1158
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/navigation/NavDestination;

    .line 1159
    .local v8, "started":Landroidx/navigation/NavDestination;
    sget-object v9, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v6, v9, :cond_a

    .line 1162
    sget-object v9, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v9}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_5

    .line 1163
    :cond_a
    sget-object v9, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v6, v9, :cond_b

    .line 1166
    move-object v9, v3

    check-cast v9, Ljava/util/Map;

    sget-object v10, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-interface {v9, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    :cond_b
    :goto_5
    invoke-virtual {v8}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v9

    if-eqz v9, :cond_d

    .local v9, "it":Landroidx/navigation/NavGraph;
    const/4 v10, 0x0

    .line 1169
    .local v10, "$i$a$-let-NavController$updateBackStackLifecycle$1":I
    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 1170
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    :cond_c
    nop

    .line 1168
    .end local v9    # "it":Landroidx/navigation/NavGraph;
    .end local v10    # "$i$a$-let-NavController$updateBackStackLifecycle$1":I
    goto/16 :goto_0

    .end local v8    # "started":Landroidx/navigation/NavDestination;
    :cond_d
    goto/16 :goto_0

    .line 1174
    :cond_e
    sget-object v8, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v5, v8}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v6    # "currentMaxLifecycle":Landroidx/lifecycle/Lifecycle$State;
    .end local v7    # "destination":Landroidx/navigation/NavDestination;
    goto/16 :goto_0

    .line 1179
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1180
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1181
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    .line 1182
    .restart local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/lifecycle/Lifecycle$State;

    .line 1183
    .local v6, "newState":Landroidx/lifecycle/Lifecycle$State;
    if-eqz v6, :cond_10

    .line 1184
    invoke-virtual {v5, v6}, Landroidx/navigation/NavBackStackEntry;->setMaxLifecycle(Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_6

    .line 1187
    :cond_10
    invoke-virtual {v5}, Landroidx/navigation/NavBackStackEntry;->updateState()V

    .end local v5    # "entry":Landroidx/navigation/NavBackStackEntry;
    .end local v6    # "newState":Landroidx/lifecycle/Lifecycle$State;
    goto :goto_6

    .line 1190
    :cond_11
    return-void
.end method
