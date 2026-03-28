package androidx.collection;

import androidx.collection.internal.RuntimeHelpersKt;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableSet;
import kotlin.sequences.Sequence;
import kotlinx.coroutines.scheduling.WorkQueueKt;

/* compiled from: ScatterSet.kt */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002:\u00011B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0013\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00028\u0000¢\u0006\u0002\u0010\nJ\u0014\u0010\u000b\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\rJ\u0014\u0010\u000b\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002J\u001b\u0010\u000b\u001a\u00020\b2\u000e\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u000e¢\u0006\u0002\u0010\u000fJ\u0014\u0010\u000b\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010J\u0014\u0010\u000b\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011J\r\u0010\u0012\u001a\u00020\u0013H\u0000¢\u0006\u0002\b\u0014J\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016J\u0006\u0010\u0017\u001a\u00020\u0013J\r\u0010\u0018\u001a\u00020\u0013H\u0000¢\u0006\u0002\b\u0019J\u0015\u0010\u001a\u001a\u00020\u00042\u0006\u0010\t\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0004H\u0002J\b\u0010\u001e\u001a\u00020\u0013H\u0002J\u0010\u0010\u001f\u001a\u00020\u00132\u0006\u0010 \u001a\u00020\u0004H\u0002J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\u0003\u001a\u00020\u0004H\u0002J\u0016\u0010\"\u001a\u00020\u00132\u0006\u0010\t\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0002\u0010#J\u0017\u0010\"\u001a\u00020\u00132\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\rH\u0086\u0002J\u0017\u0010\"\u001a\u00020\u00132\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086\u0002J\u001e\u0010\"\u001a\u00020\u00132\u000e\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u000eH\u0086\u0002¢\u0006\u0002\u0010$J\u0017\u0010\"\u001a\u00020\u00132\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010H\u0086\u0002J\u0017\u0010\"\u001a\u00020\u00132\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0086\u0002J\u0016\u0010%\u001a\u00020\u00132\u0006\u0010\t\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0002\u0010#J\u0017\u0010%\u001a\u00020\u00132\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\rH\u0086\u0002J\u0017\u0010%\u001a\u00020\u00132\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0086\u0002J\u001e\u0010%\u001a\u00020\u00132\u000e\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u000eH\u0086\u0002¢\u0006\u0002\u0010$J\u0017\u0010%\u001a\u00020\u00132\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010H\u0086\u0002J\u0017\u0010%\u001a\u00020\u00132\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011H\u0086\u0002J\u0013\u0010&\u001a\u00020\b2\u0006\u0010\t\u001a\u00028\u0000¢\u0006\u0002\u0010\nJ\u0014\u0010'\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\rJ\u0014\u0010'\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002J\u001b\u0010'\u001a\u00020\b2\u000e\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000\u000e¢\u0006\u0002\u0010\u000fJ\u0014\u0010'\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0010J\u0014\u0010'\u001a\u00020\b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011J\u0010\u0010(\u001a\u00020\u00132\u0006\u0010)\u001a\u00020\u0004H\u0001J \u0010*\u001a\u00020\u00132\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\b0,H\u0086\bø\u0001\u0000J\u0015\u0010-\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\u0004H\u0000¢\u0006\u0002\b/J\b\u00100\u001a\u00020\u0004H\u0007R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00062"}, d2 = {"Landroidx/collection/MutableScatterSet;", "E", "Landroidx/collection/ScatterSet;", "initialCapacity", "", "(I)V", "growthLimit", "add", "", "element", "(Ljava/lang/Object;)Z", "addAll", "elements", "Landroidx/collection/ObjectList;", "", "([Ljava/lang/Object;)Z", "", "Lkotlin/sequences/Sequence;", "adjustStorage", "", "adjustStorage$collection", "asMutableSet", "", "clear", "dropDeletes", "dropDeletes$collection", "findAbsoluteInsertIndex", "(Ljava/lang/Object;)I", "findFirstAvailableSlot", "hash1", "initializeGrowth", "initializeMetadata", "capacity", "initializeStorage", "minusAssign", "(Ljava/lang/Object;)V", "([Ljava/lang/Object;)V", "plusAssign", "remove", "removeAll", "removeElementAt", "index", "removeIf", "predicate", "Lkotlin/Function1;", "resizeStorage", "newCapacity", "resizeStorage$collection", "trim", "MutableSetWrapper", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MutableScatterSet<E> extends ScatterSet<E> {
    private int growthLimit;

    public MutableScatterSet() {
        this(0, 1, null);
    }

    public MutableScatterSet(int initialCapacity) {
        super(null);
        boolean value$iv = initialCapacity >= 0;
        if (!value$iv) {
            RuntimeHelpersKt.throwIllegalArgumentException("Capacity must be a positive value.");
        }
        initializeStorage(ScatterMapKt.unloadedCapacity(initialCapacity));
    }

    public /* synthetic */ MutableScatterSet(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 6 : i);
    }

    private final void initializeStorage(int initialCapacity) {
        int newCapacity;
        if (initialCapacity > 0) {
            newCapacity = Math.max(7, ScatterMapKt.normalizeCapacity(initialCapacity));
        } else {
            newCapacity = 0;
        }
        this._capacity = newCapacity;
        initializeMetadata(newCapacity);
        this.elements = new Object[newCapacity];
    }

    private final void initializeMetadata(int capacity) {
        long[] jArr;
        if (capacity == 0) {
            jArr = ScatterMapKt.EmptyGroup;
        } else {
            int size = ((((capacity + 1) + 7) + 7) & (-8)) >> 3;
            long[] $this$initializeMetadata_u24lambda_u241 = new long[size];
            ArraysKt.fill$default($this$initializeMetadata_u24lambda_u241, -9187201950435737472L, 0, 0, 6, (Object) null);
            jArr = $this$initializeMetadata_u24lambda_u241;
        }
        this.metadata = jArr;
        long[] data$iv = this.metadata;
        int i$iv = capacity >> 3;
        int b$iv = (capacity & 7) << 3;
        data$iv[i$iv] = (data$iv[i$iv] & (~(255 << b$iv))) | (255 << b$iv);
        initializeGrowth();
    }

    private final void initializeGrowth() {
        this.growthLimit = ScatterMapKt.loadedCapacity(get_capacity()) - this._size;
    }

    public final boolean add(E element) {
        int oldSize = get_size();
        int index = findAbsoluteInsertIndex(element);
        this.elements[index] = element;
        return get_size() != oldSize;
    }

    public final void plusAssign(E element) {
        int index = findAbsoluteInsertIndex(element);
        this.elements[index] = element;
    }

    public final boolean addAll(E[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int oldSize = get_size();
        plusAssign((Object[]) elements);
        return oldSize != get_size();
    }

    public final boolean addAll(Iterable<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int oldSize = get_size();
        plusAssign((Iterable) elements);
        return oldSize != get_size();
    }

    public final boolean addAll(Sequence<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int oldSize = get_size();
        plusAssign((Sequence) elements);
        return oldSize != get_size();
    }

    public final boolean addAll(ScatterSet<E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int oldSize = get_size();
        plusAssign((ScatterSet) elements);
        return oldSize != get_size();
    }

    public final boolean addAll(ObjectList<E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int oldSize = get_size();
        plusAssign((ObjectList) elements);
        return oldSize != get_size();
    }

    public final void plusAssign(E[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        for (E e : elements) {
            plusAssign((MutableScatterSet<E>) e);
        }
    }

    public final void plusAssign(Iterable<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Iterator<? extends E> it = elements.iterator();
        while (it.hasNext()) {
            plusAssign((MutableScatterSet<E>) it.next());
        }
    }

    public final void plusAssign(Sequence<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Iterator<? extends E> it = elements.iterator();
        while (it.hasNext()) {
            plusAssign((MutableScatterSet<E>) it.next());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void plusAssign(ScatterSet<E> elements) {
        ScatterSet this_$iv;
        ScatterSet this_$iv2;
        Intrinsics.checkNotNullParameter(elements, "elements");
        ScatterSet this_$iv3 = elements;
        Object[] k$iv = this_$iv3.elements;
        long[] m$iv$iv = this_$iv3.metadata;
        int lastIndex$iv$iv = m$iv$iv.length - 2;
        int i$iv$iv = 0;
        if (0 > lastIndex$iv$iv) {
            return;
        }
        while (true) {
            long slot$iv$iv = m$iv$iv[i$iv$iv];
            long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L);
            if ($this$maskEmptyOrDeleted$iv$iv$iv == -9187201950435737472L) {
                this_$iv = this_$iv3;
            } else {
                int i = 8;
                int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                int j$iv$iv = 0;
                while (j$iv$iv < bitCount$iv$iv) {
                    long value$iv$iv$iv = 255 & slot$iv$iv;
                    if (!(value$iv$iv$iv < 128)) {
                        this_$iv2 = this_$iv3;
                    } else {
                        int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                        Object element = k$iv[index$iv$iv];
                        this_$iv2 = this_$iv3;
                        plusAssign((MutableScatterSet<E>) element);
                    }
                    i = 8;
                    slot$iv$iv >>= 8;
                    j$iv$iv++;
                    this_$iv3 = this_$iv2;
                }
                this_$iv = this_$iv3;
                if (bitCount$iv$iv != i) {
                    return;
                }
            }
            if (i$iv$iv == lastIndex$iv$iv) {
                return;
            }
            i$iv$iv++;
            this_$iv3 = this_$iv;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void plusAssign(ObjectList<E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Object[] content$iv = elements.content;
        int i = elements._size;
        for (int i$iv = 0; i$iv < i; i$iv++) {
            Object element = content$iv[i$iv];
            plusAssign((MutableScatterSet<E>) element);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0098, code lost:
    
        r10 = (((~r5) << 6) & r5) & (-9187201950435737472L);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a6, code lost:
    
        if (r10 == 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a9, code lost:
    
        r10 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean remove(E r25) {
        /*
            Method dump skipped, instructions count: 198
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.MutableScatterSet.remove(java.lang.Object):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0097, code lost:
    
        r10 = (((~r5) << 6) & r5) & (-9187201950435737472L);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a5, code lost:
    
        if (r10 == 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a8, code lost:
    
        r10 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void minusAssign(E r25) {
        /*
            Method dump skipped, instructions count: 190
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.MutableScatterSet.minusAssign(java.lang.Object):void");
    }

    public final boolean removeAll(E[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int oldSize = get_size();
        minusAssign((Object[]) elements);
        return oldSize != get_size();
    }

    public final boolean removeAll(Sequence<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int oldSize = get_size();
        minusAssign((Sequence) elements);
        return oldSize != get_size();
    }

    public final boolean removeAll(Iterable<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int oldSize = get_size();
        minusAssign((Iterable) elements);
        return oldSize != get_size();
    }

    public final boolean removeAll(ScatterSet<E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int oldSize = get_size();
        minusAssign((ScatterSet) elements);
        return oldSize != get_size();
    }

    public final boolean removeAll(ObjectList<E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        int oldSize = get_size();
        minusAssign((ObjectList) elements);
        return oldSize != get_size();
    }

    public final void minusAssign(E[] elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        for (E e : elements) {
            minusAssign((MutableScatterSet<E>) e);
        }
    }

    public final void minusAssign(Sequence<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Iterator<? extends E> it = elements.iterator();
        while (it.hasNext()) {
            minusAssign((MutableScatterSet<E>) it.next());
        }
    }

    public final void minusAssign(Iterable<? extends E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Iterator<? extends E> it = elements.iterator();
        while (it.hasNext()) {
            minusAssign((MutableScatterSet<E>) it.next());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(ScatterSet<E> elements) {
        ScatterSet this_$iv;
        ScatterSet this_$iv2;
        Intrinsics.checkNotNullParameter(elements, "elements");
        ScatterSet this_$iv3 = elements;
        Object[] k$iv = this_$iv3.elements;
        long[] m$iv$iv = this_$iv3.metadata;
        int lastIndex$iv$iv = m$iv$iv.length - 2;
        int i$iv$iv = 0;
        if (0 > lastIndex$iv$iv) {
            return;
        }
        while (true) {
            long slot$iv$iv = m$iv$iv[i$iv$iv];
            long $this$maskEmptyOrDeleted$iv$iv$iv = ((~slot$iv$iv) << 7) & slot$iv$iv & (-9187201950435737472L);
            if ($this$maskEmptyOrDeleted$iv$iv$iv == -9187201950435737472L) {
                this_$iv = this_$iv3;
            } else {
                int i = 8;
                int bitCount$iv$iv = 8 - ((~(i$iv$iv - lastIndex$iv$iv)) >>> 31);
                int j$iv$iv = 0;
                while (j$iv$iv < bitCount$iv$iv) {
                    long value$iv$iv$iv = 255 & slot$iv$iv;
                    if (!(value$iv$iv$iv < 128)) {
                        this_$iv2 = this_$iv3;
                    } else {
                        int index$iv$iv = (i$iv$iv << 3) + j$iv$iv;
                        Object element = k$iv[index$iv$iv];
                        this_$iv2 = this_$iv3;
                        minusAssign((MutableScatterSet<E>) element);
                    }
                    i = 8;
                    slot$iv$iv >>= 8;
                    j$iv$iv++;
                    this_$iv3 = this_$iv2;
                }
                this_$iv = this_$iv3;
                if (bitCount$iv$iv != i) {
                    return;
                }
            }
            if (i$iv$iv == lastIndex$iv$iv) {
                return;
            }
            i$iv$iv++;
            this_$iv3 = this_$iv;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void minusAssign(ObjectList<E> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Object[] content$iv = elements.content;
        int i = elements._size;
        for (int i$iv = 0; i$iv < i; i$iv++) {
            Object element = content$iv[i$iv];
            minusAssign((MutableScatterSet<E>) element);
        }
    }

    public final void removeIf(Function1<? super E, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] elements = this.elements;
        MutableScatterSet<E> this_$iv = this;
        long[] m$iv = this_$iv.metadata;
        int lastIndex$iv = m$iv.length - 2;
        int i$iv = 0;
        if (0 > lastIndex$iv) {
            return;
        }
        while (true) {
            long slot$iv = m$iv[i$iv];
            long $this$maskEmptyOrDeleted$iv$iv = ((~slot$iv) << 7) & slot$iv & (-9187201950435737472L);
            if ($this$maskEmptyOrDeleted$iv$iv != -9187201950435737472L) {
                int i = 8;
                int bitCount$iv = 8 - ((~(i$iv - lastIndex$iv)) >>> 31);
                for (int j$iv = 0; j$iv < bitCount$iv; j$iv++) {
                    long value$iv$iv = 255 & slot$iv;
                    if (value$iv$iv < 128) {
                        int index$iv = (i$iv << 3) + j$iv;
                        if (predicate.invoke(elements[index$iv]).booleanValue()) {
                            removeElementAt(index$iv);
                        }
                    }
                    i = 8;
                    slot$iv >>= 8;
                }
                if (bitCount$iv != i) {
                    return;
                }
            }
            if (i$iv == lastIndex$iv) {
                return;
            } else {
                i$iv++;
            }
        }
    }

    public final void removeElementAt(int index) {
        this._size--;
        long[] data$iv = this.metadata;
        int capacity$iv = this._capacity;
        int i$iv$iv = index >> 3;
        int b$iv$iv = (index & 7) << 3;
        data$iv[i$iv$iv] = (data$iv[i$iv$iv] & (~(255 << b$iv$iv))) | (254 << b$iv$iv);
        int $i$f$writeRawMetadata = index - 7;
        int cloneIndex$iv = ($i$f$writeRawMetadata & capacity$iv) + (capacity$iv & 7);
        data$iv[cloneIndex$iv >> 3] = data$iv[index >> 3];
        this.elements[index] = null;
    }

    public final void clear() {
        this._size = 0;
        if (this.metadata != ScatterMapKt.EmptyGroup) {
            ArraysKt.fill$default(this.metadata, -9187201950435737472L, 0, 0, 6, (Object) null);
            long[] data$iv = this.metadata;
            int offset$iv = this._capacity;
            int i$iv = offset$iv >> 3;
            int b$iv = (offset$iv & 7) << 3;
            data$iv[i$iv] = (data$iv[i$iv] & (~(255 << b$iv))) | (255 << b$iv);
        }
        ArraysKt.fill(this.elements, (Object) null, 0, this._capacity);
        initializeGrowth();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0091, code lost:
    
        r11 = (((~r3) << 6) & r3) & (-9187201950435737472L);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a2, code lost:
    
        if (r11 == 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a5, code lost:
    
        r3 = findFirstAvailableSlot(r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00af, code lost:
    
        if (r24.growthLimit != 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00c5, code lost:
    
        if (((r24.metadata[r3 >> 3] >> ((r3 & 7) << 3)) & 255) != 254) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00c7, code lost:
    
        r4 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ca, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00cb, code lost:
    
        if (r4 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00cd, code lost:
    
        adjustStorage$collection();
        r3 = findFirstAvailableSlot(r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00d4, code lost:
    
        r24._size++;
        r4 = r24.growthLimit;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00f0, code lost:
    
        if (((r24.metadata[r3 >> 3] >> ((r3 & 7) << 3)) & 255) != 128) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00f2, code lost:
    
        r17 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00f5, code lost:
    
        r17 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00f7, code lost:
    
        r24.growthLimit = r4 - r17;
        r4 = r24.metadata;
        r12 = r24._capacity;
        r13 = r5;
        r17 = r3 >> 3;
        r18 = (r3 & 7) << 3;
        r4[r17] = (r4[r17] & (~(255 << r18))) | (r13 << r18);
        r9 = ((r3 - 7) & r12) + (r12 & 7);
        r4[r9 >> 3] = r4[r3 >> 3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0127, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int findAbsoluteInsertIndex(E r25) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.MutableScatterSet.findAbsoluteInsertIndex(java.lang.Object):int");
    }

    private final int findFirstAvailableSlot(int hash1) {
        int probeMask = this._capacity;
        int probeOffset = hash1 & probeMask;
        int probeIndex = 0;
        while (true) {
            long[] metadata$iv = this.metadata;
            int i$iv = probeOffset >> 3;
            int b$iv = (probeOffset & 7) << 3;
            long g = (metadata$iv[i$iv] >>> b$iv) | ((metadata$iv[i$iv + 1] << (64 - b$iv)) & ((-b$iv) >> 63));
            long $this$maskEmptyOrDeleted$iv = ((~g) << 7) & g & (-9187201950435737472L);
            if ($this$maskEmptyOrDeleted$iv != 0) {
                return ((Long.numberOfTrailingZeros($this$maskEmptyOrDeleted$iv) >> 3) + probeOffset) & probeMask;
            }
            probeIndex += 8;
            probeOffset = (probeOffset + probeIndex) & probeMask;
        }
    }

    public final int trim() {
        int previousCapacity = this._capacity;
        int newCapacity = ScatterMapKt.normalizeCapacity(ScatterMapKt.unloadedCapacity(this._size));
        if (newCapacity < previousCapacity) {
            resizeStorage$collection(newCapacity);
            return previousCapacity - this._capacity;
        }
        return 0;
    }

    public final void adjustStorage$collection() {
        if (this._capacity > 8 && Long.compare(ULong.m7130constructorimpl(ULong.m7130constructorimpl(this._size) * 32) ^ Long.MIN_VALUE, ULong.m7130constructorimpl(ULong.m7130constructorimpl(this._capacity) * 25) ^ Long.MIN_VALUE) <= 0) {
            dropDeletes$collection();
        } else {
            resizeStorage$collection(ScatterMapKt.nextCapacity(this._capacity));
        }
    }

    public final void dropDeletes$collection() {
        long[] metadata = this.metadata;
        int capacity = this._capacity;
        Object[] elements = this.elements;
        ScatterMapKt.convertMetadataForCleanup(metadata, capacity);
        int swapIndex = -1;
        int index = 0;
        while (index != capacity) {
            long m = (metadata[index >> 3] >> ((index & 7) << 3)) & 255;
            if (m == 128) {
                swapIndex = index;
                index++;
            } else if (m != 254) {
                index++;
            } else {
                Object k$iv = elements[index];
                int hash$iv = (k$iv != null ? k$iv.hashCode() : 0) * ScatterMapKt.MurmurHashC1;
                int hash = hash$iv ^ (hash$iv << 16);
                int $i$f$h1 = hash >>> 7;
                int targetIndex = findFirstAvailableSlot($i$f$h1);
                int probeOffset = $i$f$h1 & capacity;
                int newProbeIndex = ((targetIndex - probeOffset) & capacity) / 8;
                int oldProbeIndex = ((index - probeOffset) & capacity) / 8;
                if (newProbeIndex != oldProbeIndex) {
                    if (((metadata[targetIndex >> 3] >> ((targetIndex & 7) << 3)) & 255) == 128) {
                        int $i$f$h2 = hash & WorkQueueKt.MASK;
                        int i$iv = targetIndex >> 3;
                        int b$iv = (targetIndex & 7) << 3;
                        metadata[i$iv] = (metadata[i$iv] & (~(255 << b$iv))) | ($i$f$h2 << b$iv);
                        int i$iv2 = index >> 3;
                        int b$iv2 = (index & 7) << 3;
                        metadata[i$iv2] = (metadata[i$iv2] & (~(255 << b$iv2))) | (128 << b$iv2);
                        elements[targetIndex] = elements[index];
                        elements[index] = null;
                        swapIndex = index;
                    } else {
                        int $i$f$h22 = hash & WorkQueueKt.MASK;
                        long value$iv = $i$f$h22;
                        int i$iv3 = targetIndex >> 3;
                        int b$iv3 = (targetIndex & 7) << 3;
                        metadata[i$iv3] = (metadata[i$iv3] & (~(255 << b$iv3))) | (value$iv << b$iv3);
                        if (swapIndex == -1) {
                            swapIndex = ScatterMapKt.findEmptySlot(metadata, index + 1, capacity);
                        }
                        elements[swapIndex] = elements[targetIndex];
                        elements[targetIndex] = elements[index];
                        elements[index] = elements[swapIndex];
                        index--;
                    }
                    metadata[ArraysKt.getLastIndex(metadata)] = (metadata[0] & 72057594037927935L) | Long.MIN_VALUE;
                    index++;
                } else {
                    int $i$f$h23 = hash & WorkQueueKt.MASK;
                    long value$iv2 = $i$f$h23;
                    int i$iv4 = index >> 3;
                    int b$iv4 = (index & 7) << 3;
                    metadata[i$iv4] = (metadata[i$iv4] & (~(255 << b$iv4))) | (value$iv2 << b$iv4);
                    metadata[ArraysKt.getLastIndex(metadata)] = (metadata[0] & 72057594037927935L) | Long.MIN_VALUE;
                    index++;
                }
            }
        }
        initializeGrowth();
    }

    public final void resizeStorage$collection(int newCapacity) {
        long[] previousMetadata = this.metadata;
        Object[] previousElements = this.elements;
        int previousCapacity = this._capacity;
        initializeStorage(newCapacity);
        long[] newMetadata = this.metadata;
        Object[] newElements = this.elements;
        int capacity = this._capacity;
        for (int i = 0; i < previousCapacity; i++) {
            if (((previousMetadata[i >> 3] >> ((i & 7) << 3)) & 255) < 128) {
                Object previousElement = previousElements[i];
                int hash$iv = (previousElement != null ? previousElement.hashCode() : 0) * ScatterMapKt.MurmurHashC1;
                int $i$f$hash = hash$iv ^ (hash$iv << 16);
                int $i$f$h1 = $i$f$hash >>> 7;
                int index = findFirstAvailableSlot($i$f$h1);
                int $i$f$h2 = $i$f$hash & WorkQueueKt.MASK;
                long value$iv = $i$f$h2;
                int i$iv$iv = index >> 3;
                int b$iv$iv = (index & 7) << 3;
                newMetadata[i$iv$iv] = (newMetadata[i$iv$iv] & (~(255 << b$iv$iv))) | (value$iv << b$iv$iv);
                int cloneIndex$iv = ((index - 7) & capacity) + (capacity & 7);
                newMetadata[cloneIndex$iv >> 3] = newMetadata[index >> 3];
                newElements[index] = previousElement;
            }
        }
    }

    public final Set<E> asMutableSet() {
        return new MutableSetWrapper();
    }

    /* compiled from: ScatterSet.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010#\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010)\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\f0\u0001R\b\u0012\u0004\u0012\u00028\u00000\u00022\b\u0012\u0004\u0012\u00028\u00000\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0015\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\bJ\u0016\u0010\t\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016J\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fH\u0096\u0002J\u0015\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\bJ\u0016\u0010\u0011\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH\u0016J\u0016\u0010\u0012\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\u000bH\u0016¨\u0006\u0013"}, d2 = {"Landroidx/collection/MutableScatterSet$MutableSetWrapper;", "Landroidx/collection/ScatterSet$SetWrapper;", "Landroidx/collection/ScatterSet;", "", "(Landroidx/collection/MutableScatterSet;)V", "add", "", "element", "(Ljava/lang/Object;)Z", "addAll", "elements", "", "clear", "", "iterator", "", "remove", "removeAll", "retainAll", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
    private final class MutableSetWrapper extends ScatterSet<E>.SetWrapper implements Set<E>, KMutableSet {
        public MutableSetWrapper() {
            super();
        }

        @Override // androidx.collection.ScatterSet.SetWrapper, java.util.Set, java.util.Collection
        public boolean add(E element) {
            return MutableScatterSet.this.add(element);
        }

        @Override // androidx.collection.ScatterSet.SetWrapper, java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends E> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            return MutableScatterSet.this.addAll(elements);
        }

        @Override // androidx.collection.ScatterSet.SetWrapper, java.util.Set, java.util.Collection
        public void clear() {
            MutableScatterSet.this.clear();
        }

        @Override // androidx.collection.ScatterSet.SetWrapper, java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return new MutableScatterSet$MutableSetWrapper$iterator$1(MutableScatterSet.this);
        }

        @Override // androidx.collection.ScatterSet.SetWrapper, java.util.Set, java.util.Collection
        public boolean remove(Object element) {
            return MutableScatterSet.this.remove(element);
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x006b A[PHI: r2
          0x006b: PHI (r2v4 'changed' boolean) = (r2v3 'changed' boolean), (r2v5 'changed' boolean) binds: [B:5:0x002d, B:18:0x0069] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // androidx.collection.ScatterSet.SetWrapper, java.util.Set, java.util.Collection
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean retainAll(java.util.Collection<? extends java.lang.Object> r20) {
            /*
                r19 = this;
                r0 = r19
                r1 = r20
                java.lang.String r2 = "elements"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r2)
                r2 = 0
                androidx.collection.MutableScatterSet<E> r3 = androidx.collection.MutableScatterSet.this
                androidx.collection.ScatterSet r3 = (androidx.collection.ScatterSet) r3
                androidx.collection.MutableScatterSet<E> r4 = androidx.collection.MutableScatterSet.this
                r5 = 0
                long[] r6 = r3.metadata
                int r7 = r6.length
                int r7 = r7 + (-2)
                r8 = 0
                if (r8 > r7) goto L70
            L1a:
                r9 = r6[r8]
                r11 = r9
                r13 = 0
                long r14 = ~r11
                r16 = 7
                long r14 = r14 << r16
                long r14 = r14 & r11
                r16 = -9187201950435737472(0x8080808080808080, double:-2.937446524422997E-306)
                long r11 = r14 & r16
                int r11 = (r11 > r16 ? 1 : (r11 == r16 ? 0 : -1))
                if (r11 == 0) goto L6b
                int r11 = r8 - r7
                int r11 = ~r11
                int r11 = r11 >>> 31
                r12 = 8
                int r11 = 8 - r11
                r13 = 0
            L39:
                if (r13 >= r11) goto L69
                r14 = 255(0xff, double:1.26E-321)
                long r14 = r14 & r9
                r16 = 0
                r17 = 128(0x80, double:6.3E-322)
                int r17 = (r14 > r17 ? 1 : (r14 == r17 ? 0 : -1))
                if (r17 >= 0) goto L49
                r17 = 1
                goto L4b
            L49:
                r17 = 0
            L4b:
                if (r17 == 0) goto L63
                int r14 = r8 << 3
                int r14 = r14 + r13
                r15 = r14
                r16 = 0
                java.lang.Object[] r12 = r4.elements
                r12 = r12[r15]
                boolean r18 = r1.contains(r12)
                if (r18 != 0) goto L61
                r4.removeElementAt(r15)
                r2 = 1
            L61:
            L63:
                r12 = 8
                long r9 = r9 >> r12
                int r13 = r13 + 1
                goto L39
            L69:
                if (r11 != r12) goto L71
            L6b:
                if (r8 == r7) goto L70
                int r8 = r8 + 1
                goto L1a
            L70:
            L71:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.collection.MutableScatterSet.MutableSetWrapper.retainAll(java.util.Collection):boolean");
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.collection.ScatterSet.SetWrapper, java.util.Set, java.util.Collection
        public boolean removeAll(Collection<? extends Object> elements) {
            Intrinsics.checkNotNullParameter(elements, "elements");
            int size = MutableScatterSet.this.get_size();
            Iterator<? extends Object> it = elements.iterator();
            while (it.hasNext()) {
                MutableScatterSet.this.minusAssign((MutableScatterSet<E>) it.next());
            }
            return size != MutableScatterSet.this.get_size();
        }
    }
}
