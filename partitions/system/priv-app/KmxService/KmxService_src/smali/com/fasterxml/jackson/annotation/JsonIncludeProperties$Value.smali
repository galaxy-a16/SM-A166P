.class public Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field protected static final ALL:Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _included:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;-><init>(Ljava/util/Set;)V

    sput-object v0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->ALL:Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_included:Ljava/util/Set;

    return-void
.end method

.method private static _asSet([Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static _equals(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static all()Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->ALL:Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    return-object v0
.end method

.method public static from(Lcom/fasterxml/jackson/annotation/v;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->ALL:Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    return-object p0

    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    invoke-interface {p0}, Lcom/fasterxml/jackson/annotation/v;->value()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_asSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;-><init>(Ljava/util/Set;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_included:Ljava/util/Set;

    check-cast p1, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    iget-object p1, p1, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_included:Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_equals(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public getIncluded()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_included:Ljava/util/Set;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_included:Ljava/util/Set;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_included:Ljava/util/Set;

    aput-object p0, v0, v1

    const-string p0, "JsonIncludeProperties.Value(included=%s)"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public valueFor()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/fasterxml/jackson/annotation/v;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/fasterxml/jackson/annotation/v;

    return-object p0
.end method

.method public withOverrides(Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;)Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;
    .locals 3

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->getIncluded()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_included:Ljava/util/Set;

    if-nez v1, :cond_1

    return-object p1

    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;->_included:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/annotation/JsonIncludeProperties$Value;-><init>(Ljava/util/Set;)V

    :cond_4
    :goto_1
    return-object p0
.end method
