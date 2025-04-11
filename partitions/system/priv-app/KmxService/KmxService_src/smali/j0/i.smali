.class public final Lj0/i;
.super Lh5/d;
.source "SourceFile"


# instance fields
.field public final j:Lj0/h;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Lh5/d;-><init>()V

    new-instance v0, Lj0/h;

    invoke-direct {v0, p1}, Lj0/h;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lj0/i;->j:Lj0/h;

    return-void
.end method


# virtual methods
.method public final B(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 2

    sget-object v0, Landroidx/emoji2/text/l;->j:Landroidx/emoji2/text/l;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, Lj0/i;->j:Lj0/h;

    invoke-virtual {p0, p1}, Lj0/h;->B(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object p0

    return-object p0
.end method

.method public final j([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 2

    sget-object v0, Landroidx/emoji2/text/l;->j:Landroidx/emoji2/text/l;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, Lj0/i;->j:Lj0/h;

    invoke-virtual {p0, p1}, Lj0/h;->j([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p0

    return-object p0
.end method

.method public final t()Z
    .locals 0

    iget-object p0, p0, Lj0/i;->j:Lj0/h;

    iget-boolean p0, p0, Lj0/h;->l:Z

    return p0
.end method

.method public final x(Z)V
    .locals 2

    sget-object v0, Landroidx/emoji2/text/l;->j:Landroidx/emoji2/text/l;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lj0/i;->j:Lj0/h;

    invoke-virtual {p0, p1}, Lj0/h;->x(Z)V

    return-void
.end method

.method public final y(Z)V
    .locals 2

    sget-object v0, Landroidx/emoji2/text/l;->j:Landroidx/emoji2/text/l;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    iget-object p0, p0, Lj0/i;->j:Lj0/h;

    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lj0/h;->l:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lj0/h;->y(Z)V

    :goto_1
    return-void
.end method
