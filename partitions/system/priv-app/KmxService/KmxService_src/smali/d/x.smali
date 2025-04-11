.class public final Ld/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/k1;
.implements Lh/a0;


# instance fields
.field public final synthetic a:Ld/j0;


# direct methods
.method public synthetic constructor <init>(Ld/j0;)V
    .locals 0

    iput-object p1, p0, Ld/x;->a:Ld/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lh/n;Z)V
    .locals 8

    invoke-virtual {p1}, Lh/n;->k()Lh/n;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    move-object p1, v0

    :cond_1
    iget-object p0, p0, Ld/x;->a:Ld/j0;

    iget-object v4, p0, Ld/j0;->P:[Ld/i0;

    if-eqz v4, :cond_2

    array-length v5, v4

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    if-eqz v6, :cond_3

    iget-object v7, v6, Ld/i0;->h:Lh/n;

    if-ne v7, p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v3, :cond_5

    iget p1, v6, Ld/i0;->a:I

    invoke-virtual {p0, p1, v6, v0}, Ld/j0;->s(ILd/i0;Lh/n;)V

    invoke-virtual {p0, v6, v2}, Ld/j0;->u(Ld/i0;Z)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v6, p2}, Ld/j0;->u(Ld/i0;Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final j(Lh/n;)Z
    .locals 1

    invoke-virtual {p1}, Lh/n;->k()Lh/n;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Ld/x;->a:Ld/j0;

    iget-boolean v0, p0, Ld/j0;->H:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ld/j0;->C()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Ld/j0;->X:Z

    if-nez p0, :cond_0

    const/16 p0, 0x6c

    invoke-interface {v0, p0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
