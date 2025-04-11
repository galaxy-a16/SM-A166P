.class public final Ly1/b;
.super Ly1/c;
.source "SourceFile"


# instance fields
.field public final b:Lcom/fasterxml/jackson/core/JsonPointer;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonPointer;)V
    .locals 0

    invoke-direct {p0}, Ly1/c;-><init>()V

    iput-object p1, p0, Ly1/b;->b:Lcom/fasterxml/jackson/core/JsonPointer;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Ly1/b;->b:Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->matches()Z

    move-result p0

    return p0
.end method

.method public final b()Ly1/c;
    .locals 0

    return-object p0
.end method

.method public final c()Ly1/c;
    .locals 0

    return-object p0
.end method

.method public final d(I)Ly1/c;
    .locals 0

    iget-object p0, p0, Ly1/b;->b:Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonPointer;->matchElement(I)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->matches()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Ly1/c;->a:Ly1/c;

    return-object p0

    :cond_1
    new-instance p1, Ly1/b;

    invoke-direct {p1, p0}, Ly1/b;-><init>(Lcom/fasterxml/jackson/core/JsonPointer;)V

    return-object p1
.end method

.method public final e(Ljava/lang/String;)Ly1/c;
    .locals 0

    iget-object p0, p0, Ly1/b;->b:Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonPointer;->matchProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonPointer;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonPointer;->matches()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Ly1/c;->a:Ly1/c;

    return-object p0

    :cond_1
    new-instance p1, Ly1/b;

    invoke-direct {p1, p0}, Ly1/b;-><init>(Lcom/fasterxml/jackson/core/JsonPointer;)V

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[JsonPointerFilter at: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ly1/b;->b:Lcom/fasterxml/jackson/core/JsonPointer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
