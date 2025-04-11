.class public final Lcom/fasterxml/jackson/databind/deser/impl/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/fasterxml/jackson/databind/deser/v;

.field public final c:Ljava/util/HashMap;

.field public final d:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/v;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;ZZ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/h;->b:Lcom/fasterxml/jackson/databind/deser/v;

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator$CaseInsensitiveMap;->construct(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator$CaseInsensitiveMap;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/h;->c:Ljava/util/HashMap;

    array-length p2, p3

    iput p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/h;->a:I

    new-array p4, p2, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/h;->d:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    const/4 p4, 0x0

    if-eqz p5, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object p1

    array-length p5, p3

    move v0, p4

    :goto_1
    if-ge v0, p5, :cond_2

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->isIgnorable()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->findAliases(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/PropertyName;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/h;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    if-ge p4, p2, :cond_4

    aget-object p1, p3, p4

    iget-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/h;->d:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    aput-object p1, p5, p4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->isIgnorable()Z

    move-result p5

    if-nez p5, :cond_3

    iget-object p5, p0, Lcom/fasterxml/jackson/databind/deser/impl/h;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public static b(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/v;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Z)Lcom/fasterxml/jackson/databind/deser/impl/h;
    .locals 7

    array-length v0, p2

    new-array v4, v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->hasValueDeserializer()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/d;)Lcom/fasterxml/jackson/databind/i;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/i;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    :cond_0
    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/fasterxml/jackson/databind/deser/impl/h;

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/impl/h;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/v;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;ZZ)V

    return-object p2
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/k;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/h;->b:Lcom/fasterxml/jackson/databind/deser/v;

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/h;->d:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-virtual {v0, p1, p0, p2}, Lcom/fasterxml/jackson/databind/deser/v;->createFromObjectWith(Lcom/fasterxml/jackson/databind/DeserializationContext;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/deser/impl/k;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object v0, p2, Lcom/fasterxml/jackson/databind/deser/impl/k;->c:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_1

    iget-object v1, p2, Lcom/fasterxml/jackson/databind/deser/impl/k;->i:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-virtual {p1, v0, p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportUnresolvedObjectId(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/annotation/o0;)Lcom/fasterxml/jackson/databind/deser/impl/m;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p2

    :cond_1
    :goto_0
    iget-object p1, p2, Lcom/fasterxml/jackson/databind/deser/impl/k;->h:Ld/g0;

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Ld/g0;->a(Ljava/lang/Object;)V

    iget-object p1, p1, Ld/g0;->a:Ljava/lang/Object;

    check-cast p1, Ld/g0;

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/h;->c:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object p0
.end method

.method public final d(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/impl/k;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/k;

    iget p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/h;->a:I

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/fasterxml/jackson/databind/deser/impl/k;-><init>(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;ILcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V

    return-object v0
.end method
