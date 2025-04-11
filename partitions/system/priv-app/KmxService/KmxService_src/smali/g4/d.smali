.class public final Lg4/d;
.super Lh/n;
.source "SourceFile"


# instance fields
.field public final C:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/n;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lg4/d;->C:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(IIILjava/lang/CharSequence;)Lh/p;
    .locals 0

    invoke-virtual {p0}, Lh/n;->w()V

    invoke-super {p0, p1, p2, p3, p4}, Lh/n;->a(IIILjava/lang/CharSequence;)Lh/p;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lh/p;->h(Z)V

    invoke-virtual {p0}, Lh/n;->v()V

    return-object p1
.end method

.method public final addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    iget-object p0, p0, Lg4/d;->C:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p2, " does not support submenus"

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
