package kotlin.collections.builders;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.jvm.internal.markers.KMutableMap;
import kotlin.ranges.RangesKt;

/* compiled from: MapBuilder.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\b\n\u0002\u0010#\n\u0002\u0010'\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001f\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010&\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 v*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003:\u0006vwxyz{B\u0007\b\u0016¢\u0006\u0002\u0010\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007BE\b\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\t\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\t\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u0006¢\u0006\u0002\u0010\u0010J\u0017\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00028\u0000H\u0000¢\u0006\u0004\b0\u00101J\u0013\u00102\u001a\b\u0012\u0004\u0012\u00028\u00010\tH\u0002¢\u0006\u0002\u00103J\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000105J\r\u00106\u001a\u000207H\u0000¢\u0006\u0002\b8J\b\u00109\u001a\u000207H\u0016J\b\u0010:\u001a\u000207H\u0002J\u0019\u0010;\u001a\u00020\u001f2\n\u0010<\u001a\u0006\u0012\u0002\b\u00030=H\u0000¢\u0006\u0002\b>J!\u0010?\u001a\u00020\u001f2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010AH\u0000¢\u0006\u0002\bBJ\u0015\u0010C\u001a\u00020\u001f2\u0006\u0010/\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010DJ\u0015\u0010E\u001a\u00020\u001f2\u0006\u0010F\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010DJ\u0018\u0010G\u001a\u00020\u001f2\u000e\u0010H\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u000305H\u0002J\u0010\u0010I\u001a\u0002072\u0006\u0010\u0011\u001a\u00020\u0006H\u0002J\u0010\u0010J\u001a\u0002072\u0006\u0010K\u001a\u00020\u0006H\u0002J\u0019\u0010L\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010MH\u0000¢\u0006\u0002\bNJ\u0013\u0010O\u001a\u00020\u001f2\b\u0010H\u001a\u0004\u0018\u00010PH\u0096\u0002J\u0015\u0010Q\u001a\u00020\u00062\u0006\u0010/\u001a\u00028\u0000H\u0002¢\u0006\u0002\u00101J\u0015\u0010R\u001a\u00020\u00062\u0006\u0010F\u001a\u00028\u0001H\u0002¢\u0006\u0002\u00101J\u0018\u0010S\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010TJ\u0015\u0010U\u001a\u00020\u00062\u0006\u0010/\u001a\u00028\u0000H\u0002¢\u0006\u0002\u00101J\b\u0010V\u001a\u00020\u0006H\u0016J\b\u0010W\u001a\u00020\u001fH\u0016J\u0019\u0010X\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010YH\u0000¢\u0006\u0002\bZJ\u001f\u0010[\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028\u00002\u0006\u0010F\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010\\J\u001e\u0010]\u001a\u0002072\u0014\u0010^\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u000105H\u0016J\"\u0010_\u001a\u00020\u001f2\u0018\u0010^\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010A0=H\u0002J\u001c\u0010`\u001a\u00020\u001f2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010AH\u0002J\u0010\u0010a\u001a\u00020\u001f2\u0006\u0010b\u001a\u00020\u0006H\u0002J\u0010\u0010c\u001a\u0002072\u0006\u0010d\u001a\u00020\u0006H\u0002J\u0017\u0010e\u001a\u0004\u0018\u00018\u00012\u0006\u0010/\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010TJ!\u0010f\u001a\u00020\u001f2\u0012\u0010@\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010AH\u0000¢\u0006\u0002\bgJ\u0010\u0010h\u001a\u0002072\u0006\u0010i\u001a\u00020\u0006H\u0002J\u0017\u0010j\u001a\u00020\u00062\u0006\u0010/\u001a\u00028\u0000H\u0000¢\u0006\u0004\bk\u00101J\u0010\u0010l\u001a\u0002072\u0006\u0010m\u001a\u00020\u0006H\u0002J\u0017\u0010n\u001a\u00020\u001f2\u0006\u0010o\u001a\u00028\u0001H\u0000¢\u0006\u0004\bp\u0010DJ\b\u0010q\u001a\u00020rH\u0016J\u0019\u0010s\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010tH\u0000¢\u0006\u0002\buR\u0014\u0010\u0011\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R&\u0010\u0014\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00160\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u0013R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u00158VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\u0018R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\"R\u0016\u0010#\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u0006@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u0013R\u001a\u0010(\u001a\b\u0012\u0004\u0012\u00028\u00010)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010+R\u0018\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\"R\u0016\u0010,\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010-X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006|"}, d2 = {"Lkotlin/collections/builders/MapBuilder;", "K", "V", "", "()V", "initialCapacity", "", "(I)V", "keysArray", "", "valuesArray", "presenceArray", "", "hashArray", "maxProbeDistance", "length", "([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V", "capacity", "getCapacity", "()I", "entries", "", "", "getEntries", "()Ljava/util/Set;", "entriesView", "Lkotlin/collections/builders/MapBuilderEntries;", "hashShift", "hashSize", "getHashSize", "isReadOnly", "", "keys", "getKeys", "[Ljava/lang/Object;", "keysView", "Lkotlin/collections/builders/MapBuilderKeys;", "<set-?>", "size", "getSize", "values", "", "getValues", "()Ljava/util/Collection;", "valuesView", "Lkotlin/collections/builders/MapBuilderValues;", "addKey", "key", "addKey$kotlin_stdlib", "(Ljava/lang/Object;)I", "allocateValuesArray", "()[Ljava/lang/Object;", "build", "", "checkIsMutable", "", "checkIsMutable$kotlin_stdlib", "clear", "compact", "containsAllEntries", "m", "", "containsAllEntries$kotlin_stdlib", "containsEntry", "entry", "", "containsEntry$kotlin_stdlib", "containsKey", "(Ljava/lang/Object;)Z", "containsValue", "value", "contentEquals", "other", "ensureCapacity", "ensureExtraCapacity", "n", "entriesIterator", "Lkotlin/collections/builders/MapBuilder$EntriesItr;", "entriesIterator$kotlin_stdlib", "equals", "", "findKey", "findValue", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "hash", "hashCode", "isEmpty", "keysIterator", "Lkotlin/collections/builders/MapBuilder$KeysItr;", "keysIterator$kotlin_stdlib", "put", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "putAll", "from", "putAllEntries", "putEntry", "putRehash", "i", "rehash", "newHashSize", "remove", "removeEntry", "removeEntry$kotlin_stdlib", "removeHashAt", "removedHash", "removeKey", "removeKey$kotlin_stdlib", "removeKeyAt", "index", "removeValue", "element", "removeValue$kotlin_stdlib", "toString", "", "valuesIterator", "Lkotlin/collections/builders/MapBuilder$ValuesItr;", "valuesIterator$kotlin_stdlib", "Companion", "EntriesItr", "EntryRef", "Itr", "KeysItr", "ValuesItr", "kotlin-stdlib"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes2.dex */
public final class MapBuilder<K, V> implements Map<K, V>, KMutableMap {
    private static final Companion Companion = new Companion(null);
    private static final int INITIAL_CAPACITY = 8;
    private static final int INITIAL_MAX_PROBE_DISTANCE = 2;
    private static final int MAGIC = -1640531527;
    private static final int TOMBSTONE = -1;
    private MapBuilderEntries<K, V> entriesView;
    private int[] hashArray;
    private int hashShift;
    private boolean isReadOnly;
    private K[] keysArray;
    private MapBuilderKeys<K> keysView;
    private int length;
    private int maxProbeDistance;
    private int[] presenceArray;
    private int size;
    private V[] valuesArray;
    private MapBuilderValues<V> valuesView;

    private MapBuilder(K[] kArr, V[] vArr, int[] iArr, int[] iArr2, int i, int i2) {
        this.keysArray = kArr;
        this.valuesArray = vArr;
        this.presenceArray = iArr;
        this.hashArray = iArr2;
        this.maxProbeDistance = i;
        this.length = i2;
        this.hashShift = Companion.computeShift(getHashSize());
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return getKeys();
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<V> values() {
        return getValues();
    }

    public int getSize() {
        return this.size;
    }

    public MapBuilder() {
        this(8);
    }

    public MapBuilder(int i) {
        this(ListBuilderKt.arrayOfUninitializedElements(i), null, new int[i], new int[Companion.computeHashSize(i)], 2, 0);
    }

    public final Map<K, V> build() {
        checkIsMutable$kotlin_stdlib();
        this.isReadOnly = true;
        return this;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsKey(Object key) {
        return findKey(key) >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public boolean containsValue(Object value) {
        return findValue(value) >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public V get(Object key) {
        int findKey = findKey(key);
        if (findKey < 0) {
            return null;
        }
        V[] vArr = this.valuesArray;
        Intrinsics.checkNotNull(vArr);
        return vArr[findKey];
    }

    @Override // java.util.Map
    public V put(K key, V value) {
        checkIsMutable$kotlin_stdlib();
        int addKey$kotlin_stdlib = addKey$kotlin_stdlib(key);
        V[] allocateValuesArray = allocateValuesArray();
        if (addKey$kotlin_stdlib < 0) {
            int i = (-addKey$kotlin_stdlib) - 1;
            V v = allocateValuesArray[i];
            allocateValuesArray[i] = value;
            return v;
        }
        allocateValuesArray[addKey$kotlin_stdlib] = value;
        return null;
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        checkIsMutable$kotlin_stdlib();
        putAllEntries(from.entrySet());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public V remove(Object key) {
        int removeKey$kotlin_stdlib = removeKey$kotlin_stdlib(key);
        if (removeKey$kotlin_stdlib < 0) {
            return null;
        }
        V[] vArr = this.valuesArray;
        Intrinsics.checkNotNull(vArr);
        V v = vArr[removeKey$kotlin_stdlib];
        ListBuilderKt.resetAt(vArr, removeKey$kotlin_stdlib);
        return v;
    }

    @Override // java.util.Map
    public void clear() {
        checkIsMutable$kotlin_stdlib();
        int i = this.length - 1;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.presenceArray;
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    this.hashArray[i3] = 0;
                    iArr[i2] = -1;
                }
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        ListBuilderKt.resetRange(this.keysArray, 0, this.length);
        V[] vArr = this.valuesArray;
        if (vArr != null) {
            ListBuilderKt.resetRange(vArr, 0, this.length);
        }
        this.size = 0;
        this.length = 0;
    }

    public Set<K> getKeys() {
        MapBuilderKeys<K> mapBuilderKeys = this.keysView;
        if (mapBuilderKeys == null) {
            mapBuilderKeys = new MapBuilderKeys<>(this);
            this.keysView = mapBuilderKeys;
        }
        return mapBuilderKeys;
    }

    public Collection<V> getValues() {
        MapBuilderValues<V> mapBuilderValues = this.valuesView;
        if (mapBuilderValues == null) {
            mapBuilderValues = new MapBuilderValues<>(this);
            this.valuesView = mapBuilderValues;
        }
        return mapBuilderValues;
    }

    public Set<Map.Entry<K, V>> getEntries() {
        MapBuilderEntries<K, V> mapBuilderEntries = this.entriesView;
        if (mapBuilderEntries != null) {
            return mapBuilderEntries;
        }
        MapBuilderEntries<K, V> mapBuilderEntries2 = new MapBuilderEntries<>(this);
        this.entriesView = mapBuilderEntries2;
        return mapBuilderEntries2;
    }

    @Override // java.util.Map
    public boolean equals(Object other) {
        return other == this || ((other instanceof Map) && contentEquals((Map) other));
    }

    @Override // java.util.Map
    public int hashCode() {
        EntriesItr<K, V> entriesIterator$kotlin_stdlib = entriesIterator$kotlin_stdlib();
        int i = 0;
        while (entriesIterator$kotlin_stdlib.hasNext()) {
            i += entriesIterator$kotlin_stdlib.nextHashCode$kotlin_stdlib();
        }
        return i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((size() * 3) + 2);
        sb.append("{");
        EntriesItr<K, V> entriesIterator$kotlin_stdlib = entriesIterator$kotlin_stdlib();
        int i = 0;
        while (entriesIterator$kotlin_stdlib.hasNext()) {
            if (i > 0) {
                sb.append(", ");
            }
            entriesIterator$kotlin_stdlib.nextAppendString(sb);
            i++;
        }
        sb.append("}");
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
        return sb2;
    }

    private final int getCapacity() {
        return this.keysArray.length;
    }

    private final int getHashSize() {
        return this.hashArray.length;
    }

    public final void checkIsMutable$kotlin_stdlib() {
        if (this.isReadOnly) {
            throw new UnsupportedOperationException();
        }
    }

    private final void ensureExtraCapacity(int n) {
        ensureCapacity(this.length + n);
    }

    private final void ensureCapacity(int capacity) {
        if (capacity > getCapacity()) {
            int capacity2 = (getCapacity() * 3) / 2;
            if (capacity <= capacity2) {
                capacity = capacity2;
            }
            this.keysArray = (K[]) ListBuilderKt.copyOfUninitializedElements(this.keysArray, capacity);
            V[] vArr = this.valuesArray;
            this.valuesArray = vArr != null ? (V[]) ListBuilderKt.copyOfUninitializedElements(vArr, capacity) : null;
            int[] copyOf = Arrays.copyOf(this.presenceArray, capacity);
            Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, newSize)");
            this.presenceArray = copyOf;
            int computeHashSize = Companion.computeHashSize(capacity);
            if (computeHashSize > getHashSize()) {
                rehash(computeHashSize);
                return;
            }
            return;
        }
        if ((this.length + capacity) - size() > getCapacity()) {
            rehash(getHashSize());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final V[] allocateValuesArray() {
        V[] vArr = this.valuesArray;
        if (vArr != null) {
            return vArr;
        }
        V[] vArr2 = (V[]) ListBuilderKt.arrayOfUninitializedElements(getCapacity());
        this.valuesArray = vArr2;
        return vArr2;
    }

    private final int hash(K key) {
        return ((key != null ? key.hashCode() : 0) * MAGIC) >>> this.hashShift;
    }

    private final void compact() {
        int i;
        V[] vArr = this.valuesArray;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = this.length;
            if (i2 >= i) {
                break;
            }
            if (this.presenceArray[i2] >= 0) {
                K[] kArr = this.keysArray;
                kArr[i3] = kArr[i2];
                if (vArr != null) {
                    vArr[i3] = vArr[i2];
                }
                i3++;
            }
            i2++;
        }
        ListBuilderKt.resetRange(this.keysArray, i3, i);
        if (vArr != null) {
            ListBuilderKt.resetRange(vArr, i3, this.length);
        }
        this.length = i3;
    }

    private final void rehash(int newHashSize) {
        if (this.length > size()) {
            compact();
        }
        int i = 0;
        if (newHashSize != getHashSize()) {
            this.hashArray = new int[newHashSize];
            this.hashShift = Companion.computeShift(newHashSize);
        } else {
            ArraysKt.fill(this.hashArray, 0, 0, getHashSize());
        }
        while (i < this.length) {
            int i2 = i + 1;
            if (!putRehash(i)) {
                throw new IllegalStateException("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
            }
            i = i2;
        }
    }

    private final boolean putRehash(int i) {
        int hash = hash(this.keysArray[i]);
        int i2 = this.maxProbeDistance;
        while (true) {
            int[] iArr = this.hashArray;
            if (iArr[hash] == 0) {
                iArr[hash] = i + 1;
                this.presenceArray[i] = hash;
                return true;
            }
            i2--;
            if (i2 < 0) {
                return false;
            }
            hash = hash == 0 ? getHashSize() - 1 : hash - 1;
        }
    }

    private final int findKey(K key) {
        int hash = hash(key);
        int i = this.maxProbeDistance;
        while (true) {
            int i2 = this.hashArray[hash];
            if (i2 == 0) {
                return -1;
            }
            if (i2 > 0) {
                int i3 = i2 - 1;
                if (Intrinsics.areEqual(this.keysArray[i3], key)) {
                    return i3;
                }
            }
            i--;
            if (i < 0) {
                return -1;
            }
            hash = hash == 0 ? getHashSize() - 1 : hash - 1;
        }
    }

    private final int findValue(V value) {
        int i = this.length;
        while (true) {
            i--;
            if (i < 0) {
                return -1;
            }
            if (this.presenceArray[i] >= 0) {
                V[] vArr = this.valuesArray;
                Intrinsics.checkNotNull(vArr);
                if (Intrinsics.areEqual(vArr[i], value)) {
                    return i;
                }
            }
        }
    }

    public final int addKey$kotlin_stdlib(K key) {
        checkIsMutable$kotlin_stdlib();
        while (true) {
            int hash = hash(key);
            int coerceAtMost = RangesKt.coerceAtMost(this.maxProbeDistance * 2, getHashSize() / 2);
            int i = 0;
            while (true) {
                int i2 = this.hashArray[hash];
                if (i2 <= 0) {
                    if (this.length >= getCapacity()) {
                        ensureExtraCapacity(1);
                    } else {
                        int i3 = this.length;
                        int i4 = i3 + 1;
                        this.length = i4;
                        this.keysArray[i3] = key;
                        this.presenceArray[i3] = hash;
                        this.hashArray[hash] = i4;
                        this.size = size() + 1;
                        if (i > this.maxProbeDistance) {
                            this.maxProbeDistance = i;
                        }
                        return i3;
                    }
                } else {
                    if (Intrinsics.areEqual(this.keysArray[i2 - 1], key)) {
                        return -i2;
                    }
                    i++;
                    if (i > coerceAtMost) {
                        rehash(getHashSize() * 2);
                        break;
                    }
                    hash = hash == 0 ? getHashSize() - 1 : hash - 1;
                }
            }
        }
    }

    public final int removeKey$kotlin_stdlib(K key) {
        checkIsMutable$kotlin_stdlib();
        int findKey = findKey(key);
        if (findKey < 0) {
            return -1;
        }
        removeKeyAt(findKey);
        return findKey;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void removeKeyAt(int index) {
        ListBuilderKt.resetAt(this.keysArray, index);
        removeHashAt(this.presenceArray[index]);
        this.presenceArray[index] = -1;
        this.size = size() - 1;
    }

    private final void removeHashAt(int removedHash) {
        int coerceAtMost = RangesKt.coerceAtMost(this.maxProbeDistance * 2, getHashSize() / 2);
        int i = 0;
        int i2 = removedHash;
        do {
            removedHash = removedHash == 0 ? getHashSize() - 1 : removedHash - 1;
            i++;
            if (i > this.maxProbeDistance) {
                this.hashArray[i2] = 0;
                return;
            }
            int[] iArr = this.hashArray;
            int i3 = iArr[removedHash];
            if (i3 == 0) {
                iArr[i2] = 0;
                return;
            }
            if (i3 < 0) {
                iArr[i2] = -1;
            } else {
                int i4 = i3 - 1;
                if (((hash(this.keysArray[i4]) - removedHash) & (getHashSize() - 1)) >= i) {
                    this.hashArray[i2] = i3;
                    this.presenceArray[i4] = i2;
                }
                coerceAtMost--;
            }
            i2 = removedHash;
            i = 0;
            coerceAtMost--;
        } while (coerceAtMost >= 0);
        this.hashArray[i2] = -1;
    }

    public final boolean containsEntry$kotlin_stdlib(Map.Entry<? extends K, ? extends V> entry) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        int findKey = findKey(entry.getKey());
        if (findKey < 0) {
            return false;
        }
        V[] vArr = this.valuesArray;
        Intrinsics.checkNotNull(vArr);
        return Intrinsics.areEqual(vArr[findKey], entry.getValue());
    }

    private final boolean contentEquals(Map<?, ?> other) {
        return size() == other.size() && containsAllEntries$kotlin_stdlib(other.entrySet());
    }

    public final boolean containsAllEntries$kotlin_stdlib(Collection<?> m) {
        Intrinsics.checkNotNullParameter(m, "m");
        for (Object obj : m) {
            if (obj != null) {
                try {
                    if (!containsEntry$kotlin_stdlib((Map.Entry) obj)) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    private final boolean putEntry(Map.Entry<? extends K, ? extends V> entry) {
        int addKey$kotlin_stdlib = addKey$kotlin_stdlib(entry.getKey());
        V[] allocateValuesArray = allocateValuesArray();
        if (addKey$kotlin_stdlib >= 0) {
            allocateValuesArray[addKey$kotlin_stdlib] = entry.getValue();
            return true;
        }
        int i = (-addKey$kotlin_stdlib) - 1;
        if (!(!Intrinsics.areEqual(entry.getValue(), allocateValuesArray[i]))) {
            return false;
        }
        allocateValuesArray[i] = entry.getValue();
        return true;
    }

    private final boolean putAllEntries(Collection<? extends Map.Entry<? extends K, ? extends V>> from) {
        boolean z = false;
        if (from.isEmpty()) {
            return false;
        }
        ensureExtraCapacity(from.size());
        Iterator<? extends Map.Entry<? extends K, ? extends V>> it = from.iterator();
        while (it.hasNext()) {
            if (putEntry(it.next())) {
                z = true;
            }
        }
        return z;
    }

    public final boolean removeEntry$kotlin_stdlib(Map.Entry<? extends K, ? extends V> entry) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        checkIsMutable$kotlin_stdlib();
        int findKey = findKey(entry.getKey());
        if (findKey < 0) {
            return false;
        }
        Intrinsics.checkNotNull(this.valuesArray);
        if (!Intrinsics.areEqual(r2[findKey], entry.getValue())) {
            return false;
        }
        removeKeyAt(findKey);
        return true;
    }

    public final boolean removeValue$kotlin_stdlib(V element) {
        checkIsMutable$kotlin_stdlib();
        int findValue = findValue(element);
        if (findValue < 0) {
            return false;
        }
        removeKeyAt(findValue);
        return true;
    }

    public final KeysItr<K, V> keysIterator$kotlin_stdlib() {
        return new KeysItr<>(this);
    }

    public final ValuesItr<K, V> valuesIterator$kotlin_stdlib() {
        return new ValuesItr<>(this);
    }

    public final EntriesItr<K, V> entriesIterator$kotlin_stdlib() {
        return new EntriesItr<>(this);
    }

    /* compiled from: MapBuilder.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lkotlin/collections/builders/MapBuilder$Companion;", "", "()V", "INITIAL_CAPACITY", "", "INITIAL_MAX_PROBE_DISTANCE", "MAGIC", "TOMBSTONE", "computeHashSize", "capacity", "computeShift", "hashSize", "kotlin-stdlib"}, k = 1, mv = {1, 4, 0})
    private static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int computeHashSize(int capacity) {
            return Integer.highestOneBit(RangesKt.coerceAtLeast(capacity, 1) * 3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int computeShift(int hashSize) {
            return Integer.numberOfLeadingZeros(hashSize) + 1;
        }
    }

    /* compiled from: MapBuilder.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0010\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u00020\u0003B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0012\u001a\u00020\u0013J\r\u0010\u0014\u001a\u00020\u0015H\u0000¢\u0006\u0002\b\u0016J\u0006\u0010\u0017\u001a\u00020\u0015R\u001a\u0010\u0007\u001a\u00020\bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR \u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0018"}, d2 = {"Lkotlin/collections/builders/MapBuilder$Itr;", "K", "V", "", "map", "Lkotlin/collections/builders/MapBuilder;", "(Lkotlin/collections/builders/MapBuilder;)V", "index", "", "getIndex$kotlin_stdlib", "()I", "setIndex$kotlin_stdlib", "(I)V", "lastIndex", "getLastIndex$kotlin_stdlib", "setLastIndex$kotlin_stdlib", "getMap$kotlin_stdlib", "()Lkotlin/collections/builders/MapBuilder;", "hasNext", "", "initNext", "", "initNext$kotlin_stdlib", "remove", "kotlin-stdlib"}, k = 1, mv = {1, 4, 0})
    public static class Itr<K, V> {
        private int index;
        private int lastIndex;
        private final MapBuilder<K, V> map;

        public Itr(MapBuilder<K, V> map) {
            Intrinsics.checkNotNullParameter(map, "map");
            this.map = map;
            this.lastIndex = -1;
            initNext$kotlin_stdlib();
        }

        public final MapBuilder<K, V> getMap$kotlin_stdlib() {
            return this.map;
        }

        /* renamed from: getIndex$kotlin_stdlib, reason: from getter */
        public final int getIndex() {
            return this.index;
        }

        public final void setIndex$kotlin_stdlib(int i) {
            this.index = i;
        }

        /* renamed from: getLastIndex$kotlin_stdlib, reason: from getter */
        public final int getLastIndex() {
            return this.lastIndex;
        }

        public final void setLastIndex$kotlin_stdlib(int i) {
            this.lastIndex = i;
        }

        public final void initNext$kotlin_stdlib() {
            while (this.index < ((MapBuilder) this.map).length) {
                int[] iArr = ((MapBuilder) this.map).presenceArray;
                int i = this.index;
                if (iArr[i] >= 0) {
                    return;
                } else {
                    this.index = i + 1;
                }
            }
        }

        public final boolean hasNext() {
            return this.index < ((MapBuilder) this.map).length;
        }

        public final void remove() {
            this.map.checkIsMutable$kotlin_stdlib();
            this.map.removeKeyAt(this.lastIndex);
            this.lastIndex = -1;
        }
    }

    /* compiled from: MapBuilder.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u0019\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\b\u001a\u00028\u0002H\u0096\u0002¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/collections/builders/MapBuilder$KeysItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "map", "Lkotlin/collections/builders/MapBuilder;", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 4, 0})
    public static final class KeysItr<K, V> extends Itr<K, V> implements Iterator<K>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public KeysItr(MapBuilder<K, V> map) {
            super(map);
            Intrinsics.checkNotNullParameter(map, "map");
        }

        @Override // java.util.Iterator
        public K next() {
            if (getIndex() >= ((MapBuilder) getMap$kotlin_stdlib()).length) {
                throw new NoSuchElementException();
            }
            int index$kotlin_stdlib = getIndex();
            setIndex$kotlin_stdlib(index$kotlin_stdlib + 1);
            setLastIndex$kotlin_stdlib(index$kotlin_stdlib);
            K k = (K) ((MapBuilder) getMap$kotlin_stdlib()).keysArray[getLastIndex()];
            initNext$kotlin_stdlib();
            return k;
        }
    }

    /* compiled from: MapBuilder.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00020\u0004B\u0019\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0002\u0010\u0007J\u000e\u0010\b\u001a\u00028\u0003H\u0096\u0002¢\u0006\u0002\u0010\t¨\u0006\n"}, d2 = {"Lkotlin/collections/builders/MapBuilder$ValuesItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "map", "Lkotlin/collections/builders/MapBuilder;", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 4, 0})
    public static final class ValuesItr<K, V> extends Itr<K, V> implements Iterator<V>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ValuesItr(MapBuilder<K, V> map) {
            super(map);
            Intrinsics.checkNotNullParameter(map, "map");
        }

        @Override // java.util.Iterator
        public V next() {
            if (getIndex() >= ((MapBuilder) getMap$kotlin_stdlib()).length) {
                throw new NoSuchElementException();
            }
            int index$kotlin_stdlib = getIndex();
            setIndex$kotlin_stdlib(index$kotlin_stdlib + 1);
            setLastIndex$kotlin_stdlib(index$kotlin_stdlib);
            Object[] objArr = ((MapBuilder) getMap$kotlin_stdlib()).valuesArray;
            Intrinsics.checkNotNull(objArr);
            V v = (V) objArr[getLastIndex()];
            initNext$kotlin_stdlib();
            return v;
        }
    }

    /* compiled from: MapBuilder.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010)\n\u0002\u0010'\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00050\u0004B\u0019\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0007¢\u0006\u0002\u0010\bJ\u0015\u0010\t\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\nH\u0096\u0002J\u0012\u0010\u000b\u001a\u00020\f2\n\u0010\r\u001a\u00060\u000ej\u0002`\u000fJ\r\u0010\u0010\u001a\u00020\u0011H\u0000¢\u0006\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lkotlin/collections/builders/MapBuilder$EntriesItr;", "K", "V", "Lkotlin/collections/builders/MapBuilder$Itr;", "", "", "map", "Lkotlin/collections/builders/MapBuilder;", "(Lkotlin/collections/builders/MapBuilder;)V", "next", "Lkotlin/collections/builders/MapBuilder$EntryRef;", "nextAppendString", "", "sb", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "nextHashCode", "", "nextHashCode$kotlin_stdlib", "kotlin-stdlib"}, k = 1, mv = {1, 4, 0})
    public static final class EntriesItr<K, V> extends Itr<K, V> implements Iterator<Map.Entry<K, V>>, KMutableIterator {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EntriesItr(MapBuilder<K, V> map) {
            super(map);
            Intrinsics.checkNotNullParameter(map, "map");
        }

        @Override // java.util.Iterator
        public EntryRef<K, V> next() {
            if (getIndex() >= ((MapBuilder) getMap$kotlin_stdlib()).length) {
                throw new NoSuchElementException();
            }
            int index$kotlin_stdlib = getIndex();
            setIndex$kotlin_stdlib(index$kotlin_stdlib + 1);
            setLastIndex$kotlin_stdlib(index$kotlin_stdlib);
            EntryRef<K, V> entryRef = new EntryRef<>(getMap$kotlin_stdlib(), getLastIndex());
            initNext$kotlin_stdlib();
            return entryRef;
        }

        public final int nextHashCode$kotlin_stdlib() {
            if (getIndex() >= ((MapBuilder) getMap$kotlin_stdlib()).length) {
                throw new NoSuchElementException();
            }
            int index$kotlin_stdlib = getIndex();
            setIndex$kotlin_stdlib(index$kotlin_stdlib + 1);
            setLastIndex$kotlin_stdlib(index$kotlin_stdlib);
            Object obj = ((MapBuilder) getMap$kotlin_stdlib()).keysArray[getLastIndex()];
            int hashCode = obj != null ? obj.hashCode() : 0;
            Object[] objArr = ((MapBuilder) getMap$kotlin_stdlib()).valuesArray;
            Intrinsics.checkNotNull(objArr);
            Object obj2 = objArr[getLastIndex()];
            int hashCode2 = hashCode ^ (obj2 != null ? obj2.hashCode() : 0);
            initNext$kotlin_stdlib();
            return hashCode2;
        }

        public final void nextAppendString(StringBuilder sb) {
            Intrinsics.checkNotNullParameter(sb, "sb");
            if (getIndex() >= ((MapBuilder) getMap$kotlin_stdlib()).length) {
                throw new NoSuchElementException();
            }
            int index$kotlin_stdlib = getIndex();
            setIndex$kotlin_stdlib(index$kotlin_stdlib + 1);
            setLastIndex$kotlin_stdlib(index$kotlin_stdlib);
            Object obj = ((MapBuilder) getMap$kotlin_stdlib()).keysArray[getLastIndex()];
            if (Intrinsics.areEqual(obj, getMap$kotlin_stdlib())) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append('=');
            Object[] objArr = ((MapBuilder) getMap$kotlin_stdlib()).valuesArray;
            Intrinsics.checkNotNull(objArr);
            Object obj2 = objArr[getLastIndex()];
            if (Intrinsics.areEqual(obj2, getMap$kotlin_stdlib())) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            initNext$kotlin_stdlib();
        }
    }

    /* compiled from: MapBuilder.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u0000*\u0004\b\u0002\u0010\u0001*\u0004\b\u0003\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0003B!\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0007H\u0016J\u0015\u0010\u0013\u001a\u00028\u00032\u0006\u0010\u0014\u001a\u00028\u0003H\u0016¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00028\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00028\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000b¨\u0006\u0018"}, d2 = {"Lkotlin/collections/builders/MapBuilder$EntryRef;", "K", "V", "", "map", "Lkotlin/collections/builders/MapBuilder;", "index", "", "(Lkotlin/collections/builders/MapBuilder;I)V", "key", "getKey", "()Ljava/lang/Object;", "value", "getValue", "equals", "", "other", "", "hashCode", "setValue", "newValue", "(Ljava/lang/Object;)Ljava/lang/Object;", "toString", "", "kotlin-stdlib"}, k = 1, mv = {1, 4, 0})
    public static final class EntryRef<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {
        private final int index;
        private final MapBuilder<K, V> map;

        public EntryRef(MapBuilder<K, V> map, int i) {
            Intrinsics.checkNotNullParameter(map, "map");
            this.map = map;
            this.index = i;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return (K) ((MapBuilder) this.map).keysArray[this.index];
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            Object[] objArr = ((MapBuilder) this.map).valuesArray;
            Intrinsics.checkNotNull(objArr);
            return (V) objArr[this.index];
        }

        @Override // java.util.Map.Entry
        public V setValue(V newValue) {
            this.map.checkIsMutable$kotlin_stdlib();
            Object[] allocateValuesArray = this.map.allocateValuesArray();
            int i = this.index;
            V v = (V) allocateValuesArray[i];
            allocateValuesArray[i] = newValue;
            return v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object other) {
            if (other instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) other;
                if (Intrinsics.areEqual(entry.getKey(), getKey()) && Intrinsics.areEqual(entry.getValue(), getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K key = getKey();
            int hashCode = key != null ? key.hashCode() : 0;
            V value = getValue();
            return hashCode ^ (value != null ? value.hashCode() : 0);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getKey());
            sb.append('=');
            sb.append(getValue());
            return sb.toString();
        }
    }
}
