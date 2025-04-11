.class public interface abstract Lcom/android/server/PackageWatchdog$PackageHealthObserver;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# virtual methods
.method public abstract execute(Landroid/content/pm/VersionedPackage;II)Z
.end method

.method public executeBootLoopMitigation(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isPersistent()Z
.end method

.method public abstract mayObservePackage(Ljava/lang/String;)Z
.end method

.method public onBootLoop(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I
.end method
