.class public final Landroidx/lifecycle/x0;
.super Landroid/app/Fragment;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->Companion:Landroidx/lifecycle/r;

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->Companion:Landroidx/lifecycle/r;

    return-void
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->Companion:Landroidx/lifecycle/r;

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->Companion:Landroidx/lifecycle/r;

    return-void
.end method

.method public final onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->Companion:Landroidx/lifecycle/r;

    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->Companion:Landroidx/lifecycle/r;

    return-void
.end method
