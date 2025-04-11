.class public final Lcom/fasterxml/jackson/core/io/i;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field public final a:Lcom/fasterxml/jackson/core/util/j;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/util/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Lcom/fasterxml/jackson/core/util/j;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/util/j;-><init>(Lcom/fasterxml/jackson/core/util/a;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/i;->a:Lcom/fasterxml/jackson/core/util/j;

    return-void
.end method


# virtual methods
.method public final append(C)Ljava/io/Writer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/i;->write(I)V

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 3

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/i;->a:Lcom/fasterxml/jackson/core/util/j;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p1}, Lcom/fasterxml/jackson/core/util/j;->b(IILjava/lang/String;)V

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1

    .line 3
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    iget-object p3, p0, Lcom/fasterxml/jackson/core/io/i;->a:Lcom/fasterxml/jackson/core/util/j;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, p2, p1}, Lcom/fasterxml/jackson/core/util/j;->b(IILjava/lang/String;)V

    return-object p0
.end method

.method public final append(C)Ljava/lang/Appendable;
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/i;->write(I)V

    return-object p0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/i;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    return-object p0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/io/i;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    return-object p0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final write(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/i;->a:Lcom/fasterxml/jackson/core/util/j;

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/j;->a(C)V

    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/i;->a:Lcom/fasterxml/jackson/core/util/j;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/core/util/j;->b(IILjava/lang/String;)V

    return-void
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/i;->a:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0, p2, p3, p1}, Lcom/fasterxml/jackson/core/util/j;->b(IILjava/lang/String;)V

    return-void
.end method

.method public final write([C)V
    .locals 2

    .line 4
    array-length v0, p1

    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/i;->a:Lcom/fasterxml/jackson/core/util/j;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/fasterxml/jackson/core/util/j;->c(I[CI)V

    return-void
.end method

.method public final write([CII)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/fasterxml/jackson/core/io/i;->a:Lcom/fasterxml/jackson/core/util/j;

    invoke-virtual {p0, p2, p1, p3}, Lcom/fasterxml/jackson/core/util/j;->c(I[CI)V

    return-void
.end method
