.class public final Lcom/fasterxml/jackson/databind/ser/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/c;

.field public b:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field public c:Ljava/util/List;

.field public d:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

.field public e:Lcom/fasterxml/jackson/databind/ser/a;

.field public f:Ljava/lang/Object;

.field public g:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

.field public h:Lcom/fasterxml/jackson/databind/ser/impl/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/d;->i:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/d;->c:Ljava/util/List;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/d;->a:Lcom/fasterxml/jackson/databind/c;

    return-void
.end method


# virtual methods
.method public final a()Lcom/fasterxml/jackson/databind/ser/BeanSerializer;
    .locals 6

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/d;->g:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/d;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/d;->g:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/d;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/d;->e:Lcom/fasterxml/jackson/databind/ser/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/d;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/ser/a;->b:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/d;->c:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/d;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/d;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v3, Lcom/fasterxml/jackson/databind/MapperFeature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v2

    if-eqz v2, :cond_5

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/d;->b:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->fixAccess(Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/d;->e:Lcom/fasterxml/jackson/databind/ser/a;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/d;->h:Lcom/fasterxml/jackson/databind/ser/impl/c;

    if-nez v0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/d;->i:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    :cond_5
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/d;->d:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    if-eqz v2, :cond_7

    array-length v2, v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/d;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/d;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/ser/d;->d:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v2, v1

    const-string p0, "Mismatch between `properties` size (%d), `filteredProperties` (%s): should have as many (or `null` for latter)"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    new-instance v1, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/d;->a:Lcom/fasterxml/jackson/databind/c;

    iget-object v2, v2, Lcom/fasterxml/jackson/databind/c;->a:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/d;->d:[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/ser/d;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    return-object v1
.end method
