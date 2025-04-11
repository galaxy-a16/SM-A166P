.class public abstract Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;
.super Lcom/fasterxml/jackson/databind/ser/m;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final _concrete:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/o;",
            ">;"
        }
    .end annotation
.end field

.field protected static final _concreteLazy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/fasterxml/jackson/databind/o;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final _factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/StringSerializer;

    invoke-direct {v3}, Lcom/fasterxml/jackson/databind/ser/std/StringSerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    const-class v3, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/ser/std/f;->a(Ljava/util/HashMap;)V

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;-><init>(Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;-><init>(Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;

    invoke-direct {v4, v2}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;

    invoke-direct {v4, v2}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    const-class v4, Ljava/net/URL;

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    const-class v4, Ljava/net/URI;

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    const-class v4, Ljava/util/Currency;

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;

    invoke-direct {v3}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;-><init>()V

    const-class v4, Ljava/util/UUID;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    const-class v4, Ljava/util/regex/Pattern;

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    const-class v4, Ljava/util/Locale;

    invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const-class v4, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicBooleanSerializer;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const-class v4, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicIntegerSerializer;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-class v4, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers$AtomicLongSerializer;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Ljava/io/File;

    const-class v4, Lcom/fasterxml/jackson/databind/ser/std/FileSerializer;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Ljava/lang/Class;

    const-class v4, Lcom/fasterxml/jackson/databind/ser/std/ClassSerializer;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NullSerializer;

    const-class v4, Ljava/lang/Void;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/fasterxml/jackson/databind/o;

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    check-cast v4, Lcom/fasterxml/jackson/databind/o;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    check-cast v4, Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-class v2, Lcom/fasterxml/jackson/databind/util/z;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/fasterxml/jackson/databind/ser/std/TokenBufferSerializer;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/m;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    return-void
.end method


# virtual methods
.method public _checkMapContentInclusion(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .locals 4

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    const-class v1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_findInclusionWithContent(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object p2

    :goto_0
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p2, v1, :cond_8

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne p2, v1, :cond_1

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/b;->b:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    if-eq p2, v2, :cond_6

    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_5

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentFilter()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lcom/fasterxml/jackson/databind/z;->includeFilterInstance(Lcom/fasterxml/jackson/databind/introspect/q;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/z;->includeFilterSuppressNulls(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lf2/a;->isReferenceType()Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_5
    sget-object v3, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-static {v0}, Lg2/m;->e(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/c;->b(Ljava/lang/Object;)Lv/c;

    move-result-object v3

    :cond_7
    :goto_1
    invoke-virtual {p3, v3, v2}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_2
    sget-object p0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_NULL_MAP_VALUES:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/z;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {p3, v3, v2}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object p0

    return-object p0

    :cond_9
    return-object p3
.end method

.method public _findContentSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/introspect/b;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2, p0}, Lcom/fasterxml/jackson/databind/z;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public _findInclusionWithContent(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/annotation/JsonInclude$Value;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p1

    check-cast p2, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v0, p2, Lcom/fasterxml/jackson/databind/introspect/p;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v0, :cond_1

    iget-object p2, p2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p4, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultPropertyInclusion(Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p1

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultPropertyInclusion(Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p0

    if-eqz p0, :cond_3

    sget-object p2, Lcom/fasterxml/jackson/databind/ser/b;->b:[I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getValueInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x4

    if-eq p2, p3, :cond_2

    const/4 p3, 0x6

    if-eq p2, p3, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getValueInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withContentInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentFilter()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withContentFilter(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public _findKeySerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/introspect/b;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2, p0}, Lcom/fasterxml/jackson/databind/z;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public buildArraySerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/c;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            "Lcom/fasterxml/jackson/databind/o;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v7

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/o;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/o;->findArraySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_1
    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    if-eqz p6, :cond_2

    invoke-static {p6}, Lcom/fasterxml/jackson/databind/util/h;->v(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_2
    const-class p3, [Ljava/lang/String;

    if-ne p3, p1, :cond_3

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->instance:Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;

    goto :goto_0

    :cond_3
    sget-object p3, Lcom/fasterxml/jackson/databind/ser/std/h;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/databind/o;

    :cond_4
    :goto_0
    if-nez v0, :cond_5

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-direct {v0, p1, p4, p5, p6}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)V

    :cond_5
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v7

    :cond_7
    :goto_1
    return-object v0
.end method

.method public buildAtomicReferenceSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/c;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/type/ReferenceType;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            "Lcom/fasterxml/jackson/databind/o;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->getReferencedType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_findInclusionWithContent(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p3, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object p3

    :goto_0
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    const/4 v2, 0x0

    if-eq p3, v1, :cond_7

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne p3, v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/b;->b:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v1, p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_6

    const/4 v3, 0x2

    if-eq p3, v3, :cond_4

    const/4 v0, 0x3

    if-eq p3, v0, :cond_5

    const/4 v0, 0x4

    if-eq p3, v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentFilter()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/fasterxml/jackson/databind/z;->includeFilterInstance(Lcom/fasterxml/jackson/databind/introspect/q;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/z;->includeFilterSuppressNulls(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lf2/a;->isReferenceType()Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_5
    sget-object v2, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lg2/m;->e(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/c;->b(Ljava/lang/Object;)Lv/c;

    move-result-object v2

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, 0x0

    :cond_8
    :goto_2
    new-instance p0, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;

    invoke-direct {p0, p2, p4, p5, p6}, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;-><init>(Lcom/fasterxml/jackson/databind/type/ReferenceType;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)V

    invoke-virtual {p0, v2, v1}, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;->withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/std/ReferenceTypeSerializer;

    move-result-object p0

    return-object p0
.end method

.method public buildCollectionSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/c;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            "Lcom/fasterxml/jackson/databind/o;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v8

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/o;

    move-object v1, v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/o;->findCollectionSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_1
    if-nez v0, :cond_8

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/c;->b()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object p1

    sget-object p3, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne p1, p3, :cond_2

    return-object v8

    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    const-class p3, Ljava/util/EnumSet;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumImplType()Z

    move-result p2

    if-nez p2, :cond_3

    move-object p1, v8

    :cond_3
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildEnumSetSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->isIndexedList(Ljava/lang/Class;)Z

    move-result p1

    const-class v1, Ljava/lang/String;

    if-eqz p1, :cond_6

    if-ne p3, v1, :cond_5

    invoke-static {p6}, Lcom/fasterxml/jackson/databind/util/h;->v(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {p0, p1, p4, p5, p6}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildIndexedListSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    move-result-object p1

    goto :goto_0

    :cond_6
    if-ne p3, v1, :cond_7

    invoke-static {p6}, Lcom/fasterxml/jackson/databind/util/h;->v(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;

    :goto_0
    move-object v0, p1

    :cond_7
    if-nez v0, :cond_8

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    invoke-virtual {p0, p1, p4, p5, p6}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildCollectionSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    move-result-object v0

    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v8

    :cond_a
    :goto_2
    return-object v0
.end method

.method public buildCollectionSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            "Lcom/fasterxml/jackson/databind/o;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<",
            "*>;"
        }
    .end annotation

    .line 2
    new-instance p0, Lcom/fasterxml/jackson/databind/ser/std/CollectionSerializer;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/CollectionSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)V

    return-object p0
.end method

.method public buildContainerSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v9

    if-nez p4, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->useStaticType()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move/from16 v2, p4

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-virtual {v0, v9, v3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object v10

    if-eqz v10, :cond_2

    const/4 v2, 0x0

    :cond_2
    move v4, v2

    move-object/from16 v2, p3

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v2, v2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_findContentSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v2

    const/4 v12, 0x0

    if-eqz v2, :cond_9

    move-object/from16 v13, p2

    check-cast v13, Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-object/from16 v2, p3

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object v2, v2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_findKeySerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v14

    instance-of v2, v13, Lcom/fasterxml/jackson/databind/type/MapType;

    if-eqz v2, :cond_3

    move-object v2, v13

    check-cast v2, Lcom/fasterxml/jackson/databind/type/MapType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v5, v14

    move-object v6, v10

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildMapSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/c;ZLcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-object v2, v12

    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/o;

    move-object v3, v9

    move-object v4, v13

    move-object/from16 v5, p3

    move-object v6, v14

    move-object v7, v10

    move-object v8, v11

    invoke-interface/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/ser/o;->findMapLikeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_5
    if-nez v2, :cond_6

    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v2

    :cond_6
    if-eqz v2, :cond_8

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v12

    :cond_8
    :goto_1
    return-object v2

    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isCollectionLikeType()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v8, p2

    check-cast v8, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    instance-of v2, v8, Lcom/fasterxml/jackson/databind/type/CollectionType;

    if-eqz v2, :cond_a

    move-object v2, v8

    check-cast v2, Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v5, v10

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildCollectionSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/c;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    return-object v0

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v2, v12

    :cond_b
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/o;

    move-object v3, v9

    move-object v4, v8

    move-object/from16 v5, p3

    move-object v6, v10

    move-object v7, v11

    invoke-interface/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/ser/o;->findCollectionLikeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v2

    if-eqz v2, :cond_b

    :cond_c
    if-nez v2, :cond_d

    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v2

    :cond_d
    if-eqz v2, :cond_f

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v12

    :cond_f
    :goto_2
    return-object v2

    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v2, p2

    check-cast v2, Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object v5, v10

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildArraySerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/c;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    return-object v0

    :cond_11
    return-object v12
.end method

.method public buildEnumSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/c;->b()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    check-cast p3, Lcom/fasterxml/jackson/databind/introspect/p;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/p;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/util/q;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "declaringClass"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-object v3

    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, p1, p3, v0}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;

    move-result-object p1

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v3

    :cond_4
    :goto_0
    return-object p1
.end method

.method public buildEnumSetSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    new-instance p0, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object p0
.end method

.method public buildIndexedListSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            "Lcom/fasterxml/jackson/databind/o;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<",
            "*>;"
        }
    .end annotation

    new-instance p0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)V

    return-object p0
.end method

.method public buildIterableSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Z",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    new-instance p2, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;

    invoke-virtual {p0, p1, p5}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object p0

    invoke-direct {p2, p5, p4, p0}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/k;)V

    return-object p2
.end method

.method public buildIteratorSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Z",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    new-instance p2, Lcom/fasterxml/jackson/databind/ser/impl/IteratorSerializer;

    invoke-virtual {p0, p1, p5}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object p0

    invoke-direct {p2, p5, p4, p0}, Lcom/fasterxml/jackson/databind/ser/impl/IteratorSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/k;)V

    return-object p2
.end method

.method public buildMapEntrySerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;ZLcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Z",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const-class v2, Ljava/util/Map$Entry;

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/z;->getDefaultPropertyFormat(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/c;->b()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->merge(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    return-object v5

    :cond_0
    new-instance v3, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v4

    move-object/from16 v9, p6

    invoke-virtual {p0, v4, v9}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object v11

    const/4 v12, 0x0

    move-object v6, v3

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    move/from16 v10, p4

    invoke-direct/range {v6 .. v12}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/d;)V

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    move-object/from16 v6, p3

    invoke-virtual {p0, p1, v6, v4, v2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_findInclusionWithContent(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v2

    :goto_0
    sget-object v6, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-eq v2, v6, :cond_9

    sget-object v6, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v2, v6, :cond_2

    goto :goto_2

    :cond_2
    sget-object v6, Lcom/fasterxml/jackson/databind/ser/b;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v6, v2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_7

    const/4 v7, 0x2

    if-eq v2, v7, :cond_5

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentFilter()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/fasterxml/jackson/databind/z;->includeFilterInstance(Lcom/fasterxml/jackson/databind/introspect/q;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/databind/z;->includeFilterSuppressNulls(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lf2/a;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    sget-object v5, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    goto :goto_1

    :cond_7
    invoke-static {v4}, Lg2/m;->e(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v5}, Lcom/fasterxml/jackson/databind/util/c;->b(Ljava/lang/Object;)Lv/c;

    move-result-object v5

    :cond_8
    :goto_1
    invoke-virtual {v3, v5, v6}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;->withContentInclusion(Ljava/lang/Object;Z)Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;

    move-result-object v0

    return-object v0

    :cond_9
    :goto_2
    return-object v3
.end method

.method public buildMapSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/c;ZLcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/type/MapType;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Z",
            "Lcom/fasterxml/jackson/databind/o;",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            "Lcom/fasterxml/jackson/databind/o;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p3

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/c;->b()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    const/4 v9, 0x0

    if-ne v1, v2, :cond_0

    return-object v9

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v1, v9

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/ser/o;

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/ser/o;->findMapSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_2
    if-nez v1, :cond_5

    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {v0, v10, v8}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findFilterId(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;)Ljava/lang/Object;

    move-result-object v18

    move-object v1, v8

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/p;

    const-class v2, Ljava/util/Map;

    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {v10, v2, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyIgnorals(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/d;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v3

    if-nez v3, :cond_3

    move-object v11, v9

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForSerialization()Ljava/util/Set;

    move-result-object v3

    move-object v11, v3

    :goto_0
    invoke-virtual {v10, v2, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getDefaultPropertyInclusions(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/d;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v12, v9

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->getIncluded()Ljava/util/Set;

    move-result-object v1

    move-object v12, v1

    :goto_1
    move-object/from16 v13, p2

    move/from16 v14, p4

    move-object/from16 v15, p6

    move-object/from16 v16, p5

    move-object/from16 v17, p7

    invoke-static/range {v11 .. v18}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->construct(Ljava/util/Set;Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/o;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v8, v1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_checkMapContentInclusion(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v1

    :cond_5
    iget-object v2, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v9

    :cond_7
    :goto_2
    return-object v1
.end method

.method public createKeySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/o;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/c;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasKeySerializers()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->keySerializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/ser/o;

    invoke-interface {v3, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/o;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v2

    :cond_2
    :goto_0
    if-nez v3, :cond_3

    if-nez p3, :cond_4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lcom/fasterxml/jackson/databind/ser/std/i;->b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;

    move-result-object p3

    if-nez p3, :cond_4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/i;->a(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;

    move-result-object p3

    goto :goto_1

    :cond_3
    move-object p3, v3

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v2

    :cond_6
    :goto_2
    return-object p3
.end method

.method public createKeySerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/o;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/c;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasKeySerializers()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->keySerializers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v4, v3

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/ser/o;

    invoke-interface {v4, v0, p2, v1}, Lcom/fasterxml/jackson/databind/ser/o;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v4, v3

    :cond_2
    :goto_0
    if-nez v4, :cond_d

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/p;

    .line 2
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    .line 3
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_findKeySerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v2

    if-nez v2, :cond_c

    if-nez p3, :cond_e

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/fasterxml/jackson/databind/ser/std/i;->b(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;

    move-result-object v2

    if-nez v2, :cond_c

    .line 4
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/introspect/p;->b:Lcom/fasterxml/jackson/databind/introspect/b0;

    if-nez v2, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    iget-boolean v4, v2, Lcom/fasterxml/jackson/databind/introspect/b0;->i:Z

    if-nez v4, :cond_4

    .line 6
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/b0;->h()V

    :cond_4
    iget-object v4, v2, Lcom/fasterxml/jackson/databind/introspect/b0;->q:Ljava/util/LinkedList;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v4, v6, :cond_6

    iget-object v4, v2, Lcom/fasterxml/jackson/databind/introspect/b0;->q:Ljava/util/LinkedList;

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/introspect/b0;->g(Ljava/util/LinkedList;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    iget-object p1, v2, Lcom/fasterxml/jackson/databind/introspect/b0;->q:Ljava/util/LinkedList;

    invoke-virtual {p1, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, v5

    iget-object p1, v2, Lcom/fasterxml/jackson/databind/introspect/b0;->q:Ljava/util/LinkedList;

    invoke-virtual {p1, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, v6

    const-string p1, "Multiple \'as-key\' properties defined (%s vs %s)"

    invoke-virtual {v2, p1, p0}, Lcom/fasterxml/jackson/databind/introspect/b0;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_6
    :goto_1
    iget-object v2, v2, Lcom/fasterxml/jackson/databind/introspect/b0;->q:Ljava/util/LinkedList;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    goto :goto_3

    :cond_7
    :goto_2
    move-object v2, v3

    :goto_3
    if-nez v2, :cond_9

    .line 7
    iget-object v1, v1, Lcom/fasterxml/jackson/databind/introspect/p;->b:Lcom/fasterxml/jackson/databind/introspect/b0;

    if-nez v1, :cond_8

    move-object v2, v3

    goto :goto_4

    .line 8
    :cond_8
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/b0;->i()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    move-object v2, v1

    :cond_9
    :goto_4
    if-eqz v2, :cond_b

    .line 9
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/b;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createKeySerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object p2

    sget-object p3, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p3

    invoke-static {p2, p3}, Lcom/fasterxml/jackson/databind/util/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_a
    new-instance p3, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;

    invoke-direct {p3, v2, v3, p1}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)V

    goto :goto_5

    :cond_b
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/i;->a(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;

    move-result-object p3

    goto :goto_5

    :cond_c
    move-object p3, v2

    goto :goto_5

    :cond_d
    move-object p3, v4

    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_6

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v3

    :cond_10
    :goto_6
    return-object p3
.end method

.method public abstract createSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation
.end method

.method public createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/k;
    .locals 3

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/c;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/i;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultTyper(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/i;

    move-result-object v0

    move-object p0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfigBase;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/e;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/fasterxml/jackson/databind/jsontype/e;->collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/d;)Ljava/util/Collection;

    move-result-object p0

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0, p1, p2, p0}, Lcom/fasterxml/jackson/databind/jsontype/i;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object p0

    return-object p0
.end method

.method public abstract customSerializers()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/fasterxml/jackson/databind/ser/o;",
            ">;"
        }
    .end annotation
.end method

.method public findConverter(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/util/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/introspect/b;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/j;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2, p0}, Lcom/fasterxml/jackson/databind/e;->converterInstance(Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/j;

    move-result-object p0

    return-object p0
.end method

.method public findConvertingSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/introspect/b;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/introspect/b;",
            "Lcom/fasterxml/jackson/databind/o;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findConverter(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/util/j;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p3

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-object p1, p0

    check-cast p1, Lcom/fasterxml/jackson/databind/deser/impl/g;

    new-instance p2, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/deser/impl/g;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {p2, p0, p1, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/j;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;)V

    return-object p2
.end method

.method public findFilterId(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p0

    check-cast p2, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object p1, p2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFilterId(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public findOptionalStdSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    sget-object p0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0
.end method

.method public findReferenceSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/type/ReferenceType;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/jsontype/k;

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v8

    move-object/from16 v9, p0

    if-nez v1, :cond_0

    invoke-virtual {v9, v8, v0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object v1

    :cond_0
    move-object v14, v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/fasterxml/jackson/databind/o;

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/o;

    move-object v3, v8

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v14

    move-object v7, v15

    invoke-interface/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/ser/o;->findReferenceSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JavaType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    invoke-virtual/range {v9 .. v15}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildAtomicReferenceSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/c;ZLcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final findSerializerByAddonType(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Iterator;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    :goto_1
    move-object v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildIteratorSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0

    :cond_2
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    if-eq v1, v4, :cond_3

    goto :goto_2

    :cond_3
    aget-object v0, v0, v3

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    :goto_3
    move-object v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildIterableSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0

    :cond_5
    const-class p0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Lcom/fasterxml/jackson/databind/m;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;

    return-object p0

    :cond_0
    check-cast p3, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object p2, p3, Lcom/fasterxml/jackson/databind/introspect/p;->b:Lcom/fasterxml/jackson/databind/introspect/b0;

    const/4 p3, 0x0

    if-nez p2, :cond_1

    move-object p2, p3

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/b0;->i()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->canOverrideAccessModifiers()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getMember()Ljava/lang/reflect/Member;

    move-result-object p3

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/z;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    invoke-static {p3, v0}, Lcom/fasterxml/jackson/databind/util/h;->e(Ljava/lang/reflect/Member;Z)V

    :cond_2
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/b;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/o;

    :cond_3
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/jsontype/k;

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object v1

    :cond_4
    new-instance p0, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;

    invoke-direct {p0, p2, v1, v0}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/jsontype/k;Lcom/fasterxml/jackson/databind/o;)V

    return-object p0

    :cond_5
    return-object p3
.end method

.method public final findSerializerByLookup(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/fasterxml/jackson/databind/o;

    if-nez p1, :cond_0

    sget-object p2, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/databind/util/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/o;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final findSerializerByPrimaryType(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/c;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildEnumSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findOptionalStdSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;Z)Lcom/fasterxml/jackson/databind/o;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    return-object p0

    :cond_2
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object p0, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;

    return-object p0

    :cond_3
    const-class v1, Ljava/util/Map$Entry;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/JavaType;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeOrUnknown(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v9

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeOrUnknown(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-virtual/range {v4 .. v10}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildMapEntrySerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/c;ZLcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0

    :cond_4
    const-class p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/fasterxml/jackson/databind/ser/std/ByteBufferSerializer;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/std/ByteBufferSerializer;-><init>()V

    return-object p0

    :cond_5
    const-class p0, Ljava/net/InetAddress;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Lcom/fasterxml/jackson/databind/ser/std/InetAddressSerializer;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/std/InetAddressSerializer;-><init>()V

    return-object p0

    :cond_6
    const-class p0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Lcom/fasterxml/jackson/databind/ser/std/InetSocketAddressSerializer;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/std/InetSocketAddressSerializer;-><init>()V

    return-object p0

    :cond_7
    const-class p0, Ljava/util/TimeZone;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Lcom/fasterxml/jackson/databind/ser/std/TimeZoneSerializer;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/std/TimeZoneSerializer;-><init>()V

    return-object p0

    :cond_8
    const-class p0, Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    return-object p0

    :cond_9
    const-class p0, Ljava/lang/Number;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_c

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/c;->b()Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p0

    sget-object p2, Lcom/fasterxml/jackson/databind/ser/b;->a:[I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p2, p0

    if-eq p0, v3, :cond_b

    const/4 p2, 0x2

    if-eq p0, p2, :cond_a

    const/4 p2, 0x3

    if-eq p0, p2, :cond_a

    sget-object p0, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;

    return-object p0

    :cond_a
    return-object p1

    :cond_b
    sget-object p0, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    return-object p0

    :cond_c
    const-class p0, Ljava/lang/ClassLoader;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_d

    new-instance p0, Lcom/fasterxml/jackson/databind/ser/std/ToEmptyObjectSerializer;

    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/ser/std/ToEmptyObjectSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object p0

    :cond_d
    return-object p1
.end method

.method public findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/z;",
            "Lcom/fasterxml/jackson/databind/introspect/b;",
            ")",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/z;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializer(Lcom/fasterxml/jackson/databind/introspect/b;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/z;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/b;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/o;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findConvertingSerializer(Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/introspect/b;Lcom/fasterxml/jackson/databind/o;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p0

    return-object p0
.end method

.method public getFactoryConfig()Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    return-object p0
.end method

.method public isIndexedList(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class p0, Ljava/util/RandomAccess;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public usesStaticTyping(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/c;Lcom/fasterxml/jackson/databind/jsontype/k;)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p3, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p3

    check-cast p2, Lcom/fasterxml/jackson/databind/introspect/p;

    iget-object p2, p2, Lcom/fasterxml/jackson/databind/introspect/p;->e:Lcom/fasterxml/jackson/databind/introspect/d;

    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/b;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p3, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->DEFAULT_TYPING:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    if-eq p2, p3, :cond_2

    sget-object p1, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->STATIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    if-ne p2, p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0

    :cond_2
    sget-object p0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p0

    return p0
.end method

.method public final withAdditionalKeySerializers(Lcom/fasterxml/jackson/databind/ser/o;)Lcom/fasterxml/jackson/databind/ser/m;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->withAdditionalKeySerializers(Lcom/fasterxml/jackson/databind/ser/o;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)Lcom/fasterxml/jackson/databind/ser/m;

    move-result-object p0

    return-object p0
.end method

.method public final withAdditionalSerializers(Lcom/fasterxml/jackson/databind/ser/o;)Lcom/fasterxml/jackson/databind/ser/m;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->withAdditionalSerializers(Lcom/fasterxml/jackson/databind/ser/o;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)Lcom/fasterxml/jackson/databind/ser/m;

    move-result-object p0

    return-object p0
.end method

.method public abstract withConfig(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)Lcom/fasterxml/jackson/databind/ser/m;
.end method

.method public final withSerializerModifier(Lcom/fasterxml/jackson/databind/ser/e;)Lcom/fasterxml/jackson/databind/ser/m;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->withSerializerModifier(Lcom/fasterxml/jackson/databind/ser/e;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)Lcom/fasterxml/jackson/databind/ser/m;

    move-result-object p0

    return-object p0
.end method
