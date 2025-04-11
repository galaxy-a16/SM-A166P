.class public Lcom/fasterxml/jackson/databind/introspect/x;
.super Lcom/fasterxml/jackson/databind/introspect/a;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/introspect/u;

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/u;)V
    .locals 1

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/a;-><init>()V

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STD_BEAN_NAMING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/x;->b:Z

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_IS_GETTERS_FOR_NON_BOOLEAN:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/x;->c:Z

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/x;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/x;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/x;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/x;->a:Lcom/fasterxml/jackson/databind/introspect/u;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/x;->a:Lcom/fasterxml/jackson/databind/introspect/u;

    if-eqz p0, :cond_4

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/v;

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/introspect/v;->a:Z

    if-nez p0, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v3

    goto :goto_1

    :cond_3
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/introspect/v;->b:Z

    :goto_1
    if-nez p0, :cond_4

    return-object v1

    :cond_4
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    if-ne v2, p0, :cond_5

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    sub-int v2, v0, p1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_7

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-ne p0, v2, :cond_6

    invoke-virtual {v1, p2, p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/introspect/x;->a:Lcom/fasterxml/jackson/databind/introspect/u;

    if-eqz p0, :cond_4

    check-cast p0, Lcom/fasterxml/jackson/databind/introspect/v;

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/introspect/v;->a:Z

    if-nez p0, :cond_2

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    iget-boolean p0, p0, Lcom/fasterxml/jackson/databind/introspect/v;->b:Z

    :goto_1
    if-nez p0, :cond_4

    return-object v1

    :cond_4
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    if-ne v2, p0, :cond_5

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v1, p1, 0x1

    if-ge v1, v0, :cond_6

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    sub-int p1, v0, p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final findNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/x;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object p1

    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/introspect/x;->c:Z

    if-nez v1, :cond_0

    const-class v1, Ljava/lang/Boolean;

    if-eq p1, v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_2

    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/x;->b:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/introspect/x;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/introspect/x;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/x;->f:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/x;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/x;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/x;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public findNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/x;->d:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "getCallbacks"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, ".cglib"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "net.sf.cglib"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "org.hibernate.repackage.cglib"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "org.springframework.cglib"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    return-object v0

    :cond_2
    const-string v2, "getMetaClass"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "groovy.lang"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    :cond_3
    iget-boolean p1, p0, Lcom/fasterxml/jackson/databind/introspect/x;->b:Z

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/x;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/x;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_5
    return-object v0
.end method

.method public final modifyFieldName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method
