.class public abstract Landroidx/fragment/app/k0;
.super Landroidx/fragment/app/i0;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Landroid/content/Context;

.field public final c:Landroid/os/Handler;

.field public final d:Landroidx/fragment/app/z0;


# direct methods
.method public constructor <init>(Ld/q;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Landroidx/fragment/app/i0;-><init>()V

    new-instance v1, Landroidx/fragment/app/z0;

    invoke-direct {v1}, Landroidx/fragment/app/z0;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/k0;->d:Landroidx/fragment/app/z0;

    iput-object p1, p0, Landroidx/fragment/app/k0;->a:Landroid/app/Activity;

    iput-object p1, p0, Landroidx/fragment/app/k0;->b:Landroid/content/Context;

    iput-object v0, p0, Landroidx/fragment/app/k0;->c:Landroid/os/Handler;

    return-void
.end method
