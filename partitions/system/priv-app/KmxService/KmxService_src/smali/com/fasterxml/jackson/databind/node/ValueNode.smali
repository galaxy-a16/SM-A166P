.class public abstract Lcom/fasterxml/jackson/databind/node/ValueNode;
.super Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;-><init>()V

    return-void
.end method


# virtual methods
.method public _at(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/k;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract asToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method

.method public deepCopy()Lcom/fasterxml/jackson/databind/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/k;",
            ">()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public bridge synthetic findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ValueNode;->findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p0

    return-object p0
.end method

.method public final findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/k;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/k;",
            ">;"
        }
    .end annotation

    return-object p2
.end method

.method public final findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/k;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/k;",
            ">;"
        }
    .end annotation

    return-object p2
.end method

.method public final findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    return-object p2
.end method

.method public bridge synthetic get(I)Lcom/fasterxml/jackson/core/n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ValueNode;->get(I)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Lcom/fasterxml/jackson/core/n;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ValueNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0
.end method

.method public final get(I)Lcom/fasterxml/jackson/databind/k;
    .locals 0

    .line 3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;
    .locals 0

    .line 4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final has(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public final has(Ljava/lang/String;)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public final hasNonNull(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    return p0
.end method

.method public final hasNonNull(Ljava/lang/String;)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic path(I)Lcom/fasterxml/jackson/core/n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ValueNode;->path(I)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic path(Ljava/lang/String;)Lcom/fasterxml/jackson/core/n;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ValueNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;

    move-result-object p0

    return-object p0
.end method

.method public final path(I)Lcom/fasterxml/jackson/databind/k;
    .locals 0

    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;

    move-result-object p0

    return-object p0
.end method

.method public final path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/k;
    .locals 0

    .line 4
    invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;

    move-result-object p0

    return-object p0
.end method

.method public serializeWithType(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;Lcom/fasterxml/jackson/databind/jsontype/k;)V
    .locals 1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ValueNode;->asToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    invoke-virtual {p3, v0, p0}, Lcom/fasterxml/jackson/databind/jsontype/k;->d(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)Lf2/c;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/fasterxml/jackson/databind/jsontype/k;->e(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->serialize(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/databind/z;)V

    invoke-virtual {p3, p1, v0}, Lcom/fasterxml/jackson/databind/jsontype/k;->f(Lcom/fasterxml/jackson/core/f;Lf2/c;)Lf2/c;

    return-void
.end method
