.class public final Landroidx/appcompat/widget/i4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    iput p1, p0, Landroidx/appcompat/widget/i4;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;->DEVICE_BASED:Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    iput-object p1, p0, Landroidx/appcompat/widget/i4;->d:Ljava/lang/Object;

    iput-boolean v1, p0, Landroidx/appcompat/widget/i4;->b:Z

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    iput-boolean v1, p0, Landroidx/appcompat/widget/i4;->c:Z

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/i4;->d:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    iput-boolean v1, p0, Landroidx/appcompat/widget/i4;->b:Z

    iput-boolean v1, p0, Landroidx/appcompat/widget/i4;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/i4;->a:I

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/i4;-><init>(Ljava/lang/StringBuilder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;I)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, Landroidx/appcompat/widget/i4;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/appcompat/widget/i4;->c:Z

    iput-object p1, p0, Landroidx/appcompat/widget/i4;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/appcompat/widget/i4;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/i4;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/i4;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Appendable;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/i4;->c:Z

    return-void
.end method

.method public final b(II)I
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/i4;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/i4;->d(II)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/i4;->d(II)I

    move-result p2

    iget-object p0, p0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    move p0, p2

    :goto_0
    return p0
.end method

.method public final c(II)I
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/i4;->b:Z

    if-nez v0, :cond_0

    rem-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/i4;->d:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    rem-int p2, p1, p2

    iget-object p0, p0, Landroidx/appcompat/widget/i4;->d:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    move p1, p2

    :goto_0
    return p1
.end method

.method public final d(II)I
    .locals 8

    iget-boolean v0, p0, Landroidx/appcompat/widget/i4;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const/4 v4, -0x1

    add-int/2addr v3, v4

    move v5, v2

    :goto_0
    if-gt v5, v3, :cond_1

    add-int v6, v5, v3

    ushr-int/2addr v6, v1

    invoke-virtual {v0, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    if-ge v7, p1, :cond_0

    add-int/lit8 v5, v6, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v6, -0x1

    goto :goto_0

    :cond_1
    add-int/2addr v5, v4

    if-ltz v5, :cond_2

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v5, v3, :cond_2

    invoke-virtual {v0, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    if-eq v0, v4, :cond_3

    iget-object v3, p0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast v3, Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/widget/i4;->c(II)I

    move-result p0

    add-int/2addr p0, v1

    if-ne p0, p2, :cond_4

    add-int/lit8 v3, v3, 0x1

    move p0, v2

    goto :goto_2

    :cond_3
    move p0, v2

    move v3, p0

    move v4, v3

    :cond_4
    :goto_2
    if-ge v4, p1, :cond_7

    add-int/lit8 p0, p0, 0x1

    if-ne p0, p2, :cond_5

    add-int/lit8 v3, v3, 0x1

    move p0, v2

    goto :goto_3

    :cond_5
    if-le p0, p2, :cond_6

    add-int/lit8 v3, v3, 0x1

    move p0, v1

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    add-int/2addr p0, v1

    if-le p0, p2, :cond_8

    add-int/lit8 v3, v3, 0x1

    :cond_8
    return v3
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/i4;->d:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, " Outdent() without matching Indent()."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/widget/i4;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/widget/i4;->c:Z

    iget-object v0, p0, Landroidx/appcompat/widget/i4;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Appendable;

    iget-boolean v1, p0, Landroidx/appcompat/widget/i4;->b:Z

    if-eqz v1, :cond_0

    const-string v1, " "

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/StringBuilder;

    :goto_0
    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/i4;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Appendable;

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroidx/appcompat/widget/i4;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " D:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroidx/appcompat/widget/i4;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " O:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/widget/i4;->d:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " S:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/widget/i4;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " M:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/appcompat/widget/i4;->c:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
