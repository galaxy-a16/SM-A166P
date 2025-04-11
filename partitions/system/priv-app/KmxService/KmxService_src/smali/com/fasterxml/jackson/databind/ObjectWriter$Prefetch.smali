.class public final Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ObjectWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Prefetch"
.end annotation


# static fields
.field public static final empty:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final rootType:Lcom/fasterxml/jackson/databind/JavaType;

.field private final typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

.field private final valueSerializer:Lcom/fasterxml/jackson/databind/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/jsontype/k;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->empty:Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/jsontype/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/o;",
            "Lcom/fasterxml/jackson/databind/jsontype/k;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->valueSerializer:Lcom/fasterxml/jackson/databind/o;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    return-void
.end method


# virtual methods
.method public forRootType(Lcom/fasterxml/jackson/databind/ObjectWriter;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->rootType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->valueSerializer:Lcom/fasterxml/jackson/databind/o;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-direct {p0, v0, v0, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/jsontype/k;)V

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->rootType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p0

    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider()Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/z;->findTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/k;

    move-result-object p0
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-direct {p1, v0, v0, p0}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/jsontype/k;)V

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;

    invoke-direct {p1, p0}, Lcom/fasterxml/jackson/databind/RuntimeJsonMappingException;-><init>(Lcom/fasterxml/jackson/databind/JsonMappingException;)V

    throw p1

    :cond_4
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->EAGER_SERIALIZER_FETCH:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->_serializerProvider()Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object p1

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p1, p2, v1, v0}, Lcom/fasterxml/jackson/databind/z;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/o;

    move-result-object p1

    instance-of v1, p1, Lcom/fasterxml/jackson/databind/ser/impl/n;

    if-eqz v1, :cond_5

    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    check-cast p1, Lcom/fasterxml/jackson/databind/ser/impl/n;

    iget-object p1, p1, Lcom/fasterxml/jackson/databind/ser/impl/n;->a:Lcom/fasterxml/jackson/databind/jsontype/k;

    invoke-direct {v1, p2, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/jsontype/k;)V

    return-object v1

    :cond_5
    new-instance v1, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    invoke-direct {v1, p2, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/jsontype/k;)V
    :try_end_1
    .catch Lcom/fasterxml/jackson/databind/DatabindException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    :cond_6
    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    invoke-direct {p1, p2, v0, p0}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/jsontype/k;)V

    return-object p1
.end method

.method public final getTypeSerializer()Lcom/fasterxml/jackson/databind/jsontype/k;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    return-object p0
.end method

.method public final getValueSerializer()Lcom/fasterxml/jackson/databind/o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/o;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->valueSerializer:Lcom/fasterxml/jackson/databind/o;

    return-object p0
.end method

.method public hasSerializer()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->valueSerializer:Lcom/fasterxml/jackson/databind/o;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public serialize(Lcom/fasterxml/jackson/core/f;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;)V
    .locals 6

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/k;

    if-eqz v5, :cond_0

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->rootType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->valueSerializer:Lcom/fasterxml/jackson/databind/o;

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializePolymorphic(Lcom/fasterxml/jackson/core/f;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;Lcom/fasterxml/jackson/databind/jsontype/k;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->valueSerializer:Lcom/fasterxml/jackson/databind/o;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->rootType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1, p2, p0, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/f;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/o;)V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p3, p1, p2, p0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/f;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/f;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
