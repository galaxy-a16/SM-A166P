.class public final Ld/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/contextaware/d;


# instance fields
.field public final synthetic a:Ld/q;


# direct methods
.method public constructor <init>(Ld/q;)V
    .locals 0

    iput-object p1, p0, Ld/p;->a:Ld/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    iget-object p0, p0, Ld/p;->a:Ld/q;

    invoke-virtual {p0}, Ld/q;->getDelegate()Ld/u;

    move-result-object p1

    invoke-virtual {p1}, Ld/u;->b()V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Landroidx/savedstate/d;

    move-result-object p0

    const-string v0, "androidx:appcompat"

    invoke-virtual {p0, v0}, Landroidx/savedstate/d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {p1}, Ld/u;->f()V

    return-void
.end method
