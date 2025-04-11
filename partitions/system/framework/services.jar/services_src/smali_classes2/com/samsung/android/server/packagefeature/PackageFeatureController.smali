.class public interface abstract Lcom/samsung/android/server/packagefeature/PackageFeatureController;
.super Ljava/lang/Object;
.source "PackageFeatureController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->updateGroupData(Ljava/lang/String;)V

    return-void
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getGroupNames()Ljava/util/Set;
.end method

.method public abstract getScpmVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeature;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V
.end method

.method public abstract setFileDescriptorFunction(Ljava/util/function/Function;)V
.end method

.method public abstract startController(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/util/CoreLogger;)V
.end method

.method public abstract updateGroupData(Ljava/lang/String;)V
.end method
