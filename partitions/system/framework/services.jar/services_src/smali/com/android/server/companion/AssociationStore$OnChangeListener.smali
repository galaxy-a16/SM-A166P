.class public interface abstract Lcom/android/server/companion/AssociationStore$OnChangeListener;
.super Ljava/lang/Object;
.source "AssociationStore.java"


# virtual methods
.method public onAssociationAdded(Landroid/companion/AssociationInfo;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 67
    invoke-interface {p0, p2, p1}, Lcom/android/server/companion/AssociationStore$OnChangeListener;->onAssociationUpdated(Landroid/companion/AssociationInfo;Z)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-interface {p0, p2, v0}, Lcom/android/server/companion/AssociationStore$OnChangeListener;->onAssociationUpdated(Landroid/companion/AssociationInfo;Z)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {p0, p2}, Lcom/android/server/companion/AssociationStore$OnChangeListener;->onAssociationRemoved(Landroid/companion/AssociationInfo;)V

    goto :goto_0

    .line 55
    :cond_3
    invoke-interface {p0, p2}, Lcom/android/server/companion/AssociationStore$OnChangeListener;->onAssociationAdded(Landroid/companion/AssociationInfo;)V

    :goto_0
    return-void
.end method

.method public onAssociationRemoved(Landroid/companion/AssociationInfo;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAssociationUpdated(Landroid/companion/AssociationInfo;Z)V
    .locals 0

    .line 0
    return-void
.end method
