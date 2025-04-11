.class public final Lcom/fasterxml/jackson/databind/deser/impl/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/core/g;

.field public final b:Lcom/fasterxml/jackson/databind/DeserializationContext;

.field public final c:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

.field public final d:[Ljava/lang/Object;

.field public e:I

.field public f:I

.field public final g:Ljava/util/BitSet;

.field public h:Ld/g0;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;ILcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->a:Lcom/fasterxml/jackson/core/g;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    iput p3, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->e:I

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->c:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    new-array p1, p3, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->d:[Ljava/lang/Object;

    const/16 p1, 0x20

    if-ge p3, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->g:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getInjectableValueId()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findInjectableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;->isRequired()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v4, "Missing required creator property \'%s\' (index %d)"

    invoke-virtual {p0, p1, v4, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/d;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_MISSING_CREATOR_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Missing creator property \'%s\' (index %d); `DeserializationFeature.FAIL_ON_MISSING_CREATOR_PROPERTIES` enabled"

    invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportInputMismatch(Lcom/fasterxml/jackson/databind/d;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getNullValueProvider()Lcom/fasterxml/jackson/databind/deser/r;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/fasterxml/jackson/databind/deser/r;->getAbsentValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/databind/i;->getAbsentValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/DatabindException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/DatabindException;->prependPath(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    throw p0
.end method

.method public final b(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I

    move-result p1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->d:[Ljava/lang/Object;

    aput-object p2, v0, p1

    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->g:Ljava/util/BitSet;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_2

    iget p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->f:I

    shl-int p1, v1, p1

    or-int/2addr p1, p2

    if-eq p2, p1, :cond_3

    iput p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->f:I

    iget p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->e:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->e:I

    if-gtz p1, :cond_3

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->c:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->i:Ljava/lang/Object;

    if-eqz p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    iget p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->e:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->e:I

    :cond_3
    return v0
.end method

.method public final c(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/j;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->h:Ld/g0;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/j;-><init>(Ld/g0;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->h:Ld/g0;

    return-void
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->c:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->propertyName:Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->a:Lcom/fasterxml/jackson/core/g;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->b:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->readObjectReference(Lcom/fasterxml/jackson/core/g;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/k;->i:Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
