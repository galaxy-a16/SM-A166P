.class public Lcom/android/server/vr/EnabledComponentsObserver$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "EnabledComponentsObserver.java"


# instance fields
.field public final synthetic val$o:Lcom/android/server/vr/EnabledComponentsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/EnabledComponentsObserver;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onPackagesChanged()V

    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->onPackagesChanged()V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->onPackagesChanged()V

    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->onPackagesChanged()V

    return-void
.end method
