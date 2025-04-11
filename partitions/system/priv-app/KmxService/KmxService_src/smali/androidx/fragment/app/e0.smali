.class public final synthetic Landroidx/fragment/app/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/contextaware/d;


# instance fields
.field public final synthetic a:Landroidx/fragment/app/g0;


# direct methods
.method public synthetic constructor <init>(Ld/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/g0;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    iget-object p0, p0, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/g0;

    iget-object p0, p0, Landroidx/fragment/app/g0;->mFragments:Landroidx/fragment/app/j0;

    iget-object p0, p0, Landroidx/fragment/app/j0;->a:Landroidx/fragment/app/k0;

    iget-object p1, p0, Landroidx/fragment/app/k0;->d:Landroidx/fragment/app/z0;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p0, v0}, Landroidx/fragment/app/y0;->c(Landroidx/fragment/app/k0;Landroidx/fragment/app/i0;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
