.class public final Landroidx/core/util/b;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    iput p1, p0, Landroidx/core/util/b;->a:I

    const-string v0, "FragmentManager"

    const/4 v1, 0x1

    const/16 v2, 0x80

    if-eq p1, v1, :cond_0

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Landroidx/core/util/b;->c:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/core/util/b;->b:Ljava/lang/Object;

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Landroidx/core/util/b;->c:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/core/util/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Landroidx/core/util/b;->a:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/core/util/b;->b:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/core/util/b;->c:Ljava/lang/CharSequence;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void

    :goto_0
    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    iget v0, p0, Landroidx/core/util/b;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroidx/core/util/b;->a()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroidx/core/util/b;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final flush()V
    .locals 1

    iget v0, p0, Landroidx/core/util/b;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroidx/core/util/b;->a()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroidx/core/util/b;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final write(I)V
    .locals 1

    iget v0, p0, Landroidx/core/util/b;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/io/Writer;->write(I)V

    return-void

    .line 1
    :pswitch_0
    iget-object p0, p0, Landroidx/core/util/b;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Appendable;

    int-to-char p1, p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final write([CII)V
    .locals 5

    iget v0, p0, Landroidx/core/util/b;->a:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/core/util/b;->c:Ljava/lang/CharSequence;

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :goto_0
    :pswitch_0
    if-ge v2, p3, :cond_1

    add-int v0, p2, v2

    .line 2
    aget-char v0, p1, v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/core/util/b;->a()V

    goto :goto_1

    :cond_0
    move-object v4, v3

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :goto_2
    :pswitch_1
    if-ge v2, p3, :cond_3

    add-int v0, p2, v2

    .line 3
    aget-char v0, p1, v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroidx/core/util/b;->a()V

    goto :goto_3

    :cond_2
    move-object v4, v3

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void

    .line 4
    :goto_4
    check-cast v3, Lcom/google/gson/internal/m;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/core/util/b;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Appendable;

    add-int/2addr p3, p2

    invoke-interface {p0, v3, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
