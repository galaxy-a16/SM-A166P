.class public final Lg4/f;
.super Lg4/c;
.source "SourceFile"


# instance fields
.field public final synthetic o0:Lh/p;

.field public final synthetic p0:I

.field public final synthetic q0:Lg4/g;


# direct methods
.method public constructor <init>(Lg4/g;Landroid/content/Context;ILh/p;I)V
    .locals 0

    iput-object p1, p0, Lg4/f;->q0:Lg4/g;

    iput-object p4, p0, Lg4/f;->o0:Lh/p;

    iput p5, p0, Lg4/f;->p0:I

    invoke-direct {p0, p2, p3}, Lg4/c;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final d(Lh/p;)V
    .locals 0

    invoke-super {p0, p1}, Lg4/c;->d(Lh/p;)V

    iget-object p0, p0, Lg4/f;->q0:Lg4/g;

    iget-boolean p0, p0, Lg4/g;->o0:Z

    invoke-virtual {p1, p0}, Lh/p;->h(Z)V

    return-void
.end method

.method public final getItemLayoutResId()I
    .locals 2

    iget-object v0, p0, Lg4/f;->o0:Lh/p;

    iget v0, v0, Lh/p;->I:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const p0, 0x7f0c0081

    return p0

    :cond_0
    iget p0, p0, Lg4/f;->p0:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const p0, 0x7f0c0080

    return p0

    :cond_1
    const p0, 0x7f0c0082

    return p0
.end method
