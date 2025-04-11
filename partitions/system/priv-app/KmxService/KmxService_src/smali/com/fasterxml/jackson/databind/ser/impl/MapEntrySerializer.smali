.class public Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;
.super Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<",
        "Ljava/util/Map$Entry<",
        "**>;>;",
        "Lcom/fasterxml/jackson/databind/ser/f;"
    }
.end annotation

.annotation runtime Lg2/a;
.end annotation


# static fields
.field public static final MARKER_FOR_EMPTY:Ljava/lang/Object;


# instance fields
.field protected _dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

.field protected final _entryType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected _keySerializer:Lcom/fasterxml/jackson/databind/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation
.end field

.field protected final _keyType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _property:Lcom/fasterxml/jackson/databind/d;

.field protected final _suppressNulls:Z

.field protected final _suppressableValue:Ljava/lang/Object;

.field protected _valueSerializer:Lcom/fasterxml/jackson/databind/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation
.end field

.field protected final _valueType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _valueTypeIsStatic:Z

.field protected final _valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_entryType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-boolean p4, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeIsStatic:Z

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    iput-object p6, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_property:Lcom/fasterxml/jackson/databind/d;

    sget-object p1, Lcom/fasterxml/jackson/databind/ser/impl/e;->b:Lcom/fasterxml/jackson/databind/ser/impl/e;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressNulls:Z

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/o;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;",
            "Lcom/fasterxml/jackson/databind/d;",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            "Lcom/fasterxml/jackson/databind/o;",
            "Lcom/fasterxml/jackson/databind/o;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v6, p1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    iget-boolean v7, p1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressNulls:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;",
            "Lcom/fasterxml/jackson/databind/d;",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            "Lcom/fasterxml/jackson/databind/o;",
            "Lcom/fasterxml/jackson/databind/o;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 3
    const-class p2, Ljava/util/Map;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;-><init>(Ljava/lang/Class;Z)V

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_entryType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_entryType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-boolean p2, p1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeIsStatic:Z

    iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeIsStatic:Z

    iget-object p2, p1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/o;

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    sget-object p2, Lcom/fasterxml/jackson/databind/ser/impl/e;->b:Lcom/fasterxml/jackson/databind/ser/impl/e;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_property:Lcom/fasterxml/jackson/databind/d;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_property:Lcom/fasterxml/jackson/databind/d;

    iput-object p6, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    iput-boolean p7, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressNulls:Z

    return-void
.end method


# virtual methods
.method public final _findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/i;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/z;)Lcom/fasterxml/jackson/databind/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/i;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/z;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_property:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {p1, p3, v0, p2}, Lcom/fasterxml/jackson/databind/ser/impl/i;->a(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/JavaType;)Lp1/c;

    move-result-object p2

    iget-object p3, p2, Lp1/c;->c:Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/impl/i;

    if-eq p1, v0, :cond_0

    check-cast p3, Lcom/fasterxml/jackson/databind/ser/impl/i;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    :cond_0
    iget-object p0, p2, Lp1/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/fasterxml/jackson/databind/o;

    return-object p0
.end method

.method public final _findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/i;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/z;)Lcom/fasterxml/jackson/databind/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/impl/i;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/z;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_property:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {p1, p3, v0, p2}, Lcom/fasterxml/jackson/databind/ser/impl/i;->b(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Class;)Lp1/c;

    move-result-object p2

    iget-object p3, p2, Lp1/c;->c:Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/impl/i;

    if-eq p1, v0, :cond_0

    check-cast p3, Lcom/fasterxml/jackson/databind/ser/impl/i;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    :cond_0
    iget-object p0, p2, Lp1/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/fasterxml/jackson/databind/o;

    return-object p0
.end method

.method public _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/k;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<",
            "*>;"
        }
    .end annotation

    new-instance v8, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_property:Lcom/fasterxml/jackson/databind/d;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/o;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressNulls:Z

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Object;Z)V

    return-object v8
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/d;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/d;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2, v3}, Lcom/fasterxml/jackson/databind/z;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2, v0}, Lcom/fasterxml/jackson/databind/z;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    move-object v3, v0

    :goto_2
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    :cond_4
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->findContextualConvertingSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_5

    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeIsStatic:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/z;->findContentValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    :cond_5
    move-object v7, v0

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/o;

    :cond_6
    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/z;->findKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    goto :goto_3

    :cond_7
    invoke-virtual {p1, v3, p2}, Lcom/fasterxml/jackson/databind/z;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    :goto_3
    move-object v6, v0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressNulls:Z

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v3

    invoke-interface {p2, v3, v1}, Lcom/fasterxml/jackson/databind/d;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v4, v5, :cond_e

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/impl/b;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_c

    const/4 v4, 0x2

    if-eq v0, v4, :cond_a

    const/4 v4, 0x3

    if-eq v0, v4, :cond_b

    const/4 v4, 0x4

    if-eq v0, v4, :cond_8

    const/4 p1, 0x5

    if-eq v0, p1, :cond_d

    const/4 p1, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentFilter()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/databind/z;->includeFilterInstance(Lcom/fasterxml/jackson/databind/introspect/q;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/z;->includeFilterSuppressNulls(Ljava/lang/Object;)Z

    move-result p1

    :goto_4
    move v9, p1

    move-object v8, v1

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1}, Lf2/a;->isReferenceType()Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_b
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    goto :goto_5

    :cond_c
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-static {p1}, Lg2/m;->e(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/c;->b(Ljava/lang/Object;)Lv/c;

    move-result-object v1

    :cond_d
    :goto_5
    move-object v0, v1

    :cond_e
    move-object v8, v0

    move v9, v2

    :goto_6
    move-object v4, p0

    move-object v5, p2

    invoke-virtual/range {v4 .. v9}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->withResolved(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;

    move-result-object p0

    return-object p0
.end method

.method public getContentSerializer()Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    return-object p0
.end method

.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object p0
.end method

.method public bridge synthetic hasSingleElement(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->hasSingleElement(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public hasSingleElement(Ljava/util/Map$Entry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)Z"
        }
    .end annotation

    .line 2
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isEmpty(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->isEmpty(Lcom/fasterxml/jackson/databind/z;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/z;Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Ljava/util/Map$Entry<",
            "**>;)Z"
        }
    .end annotation

    .line 2
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressNulls:Z

    return p0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/ser/impl/i;->d(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v2

    if-nez v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    invoke-virtual {p0, v2, v0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/i;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/z;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v1

    :cond_2
    move-object v0, v2

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    sget-object v1, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    if-ne p0, v1, :cond_4

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/o;->isEmpty(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->serialize(Ljava/util/Map$Entry;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    return-void
.end method

.method public serialize(Ljava/util/Map$Entry;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;",
            "Lcom/fasterxml/jackson/core/f;",
            "Lcom/fasterxml/jackson/databind/z;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/f;->U0(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->serializeDynamic(Ljava/util/Map$Entry;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/f;->x0()V

    return-void
.end method

.method public serializeDynamic(Ljava/util/Map$Entry;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;",
            "Lcom/fasterxml/jackson/core/f;",
            "Lcom/fasterxml/jackson/databind/z;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_property:Lcom/fasterxml/jackson/databind/d;

    invoke-virtual {p3, v2, v3}, Lcom/fasterxml/jackson/databind/z;->findNullKeySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/o;

    :goto_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressNulls:Z

    if-eqz v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/z;->getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/o;

    move-result-object v4

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/ser/impl/i;->d(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p3, v6, v4}, Lcom/fasterxml/jackson/databind/z;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-virtual {p0, v5, v4, p3}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/i;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/z;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v4

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_dynamicValueSerializers:Lcom/fasterxml/jackson/databind/ser/impl/i;

    invoke-virtual {p0, v5, v4, p3}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/ser/impl/i;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/z;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v5

    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    if-eqz v5, :cond_7

    sget-object v6, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    if-ne v5, v6, :cond_6

    invoke-virtual {v4, p3, v3}, Lcom/fasterxml/jackson/databind/o;->isEmpty(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    return-void

    :cond_6
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    return-void

    :cond_7
    :goto_2
    invoke-virtual {v2, v1, p2, p3}, Lcom/fasterxml/jackson/databind/o;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    if-nez v0, :cond_8

    :try_start_0
    invoke-virtual {v4, v3, p2, p3}, Lcom/fasterxml/jackson/databind/o;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v4, v3, p2, p3, v0}, Lcom/fasterxml/jackson/databind/o;->serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    const-string v0, ""

    invoke-static {v0, v1}, Landroidx/activity/b;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, p2, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;->wrapAndThrow(Lcom/fasterxml/jackson/databind/z;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public bridge synthetic serializeWithType(Ljava/lang/Object;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->serializeWithType(Ljava/util/Map$Entry;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V

    return-void
.end method

.method public serializeWithType(Ljava/util/Map$Entry;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;",
            "Lcom/fasterxml/jackson/core/f;",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/f;->J(Ljava/lang/Object;)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p4, v0, p1}, Lcom/fasterxml/jackson/databind/jsontype/k;->d(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)Lf2/c;

    move-result-object v0

    invoke-virtual {p4, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/k;->e(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->serializeDynamic(Ljava/util/Map$Entry;Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    invoke-virtual {p4, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/k;->f(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;

    return-void
.end method

.method public withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;
    .locals 9

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressableValue:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_suppressNulls:Z

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_property:Lcom/fasterxml/jackson/databind/d;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_keySerializer:Lcom/fasterxml/jackson/databind/o;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueSerializer:Lcom/fasterxml/jackson/databind/o;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public withResolved(Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/d;",
            "Lcom/fasterxml/jackson/databind/o;",
            "Lcom/fasterxml/jackson/databind/o;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;"
        }
    .end annotation

    new-instance v8, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->_valueTypeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;-><init>(Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;Lcom/fasterxml/jackson/databind/d;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Object;Z)V

    return-object v8
.end method
