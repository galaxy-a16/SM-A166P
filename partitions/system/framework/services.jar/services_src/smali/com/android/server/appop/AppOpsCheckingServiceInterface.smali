.class public interface abstract Lcom/android/server/appop/AppOpsCheckingServiceInterface;
.super Ljava/lang/Object;
.source "AppOpsCheckingServiceInterface.java"


# virtual methods
.method public abstract clearAllModes()V
.end method

.method public abstract dumpListeners(IILjava/lang/String;Ljava/io/PrintWriter;)Z
.end method

.method public abstract evalForegroundPackageOps(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)Landroid/util/SparseBooleanArray;
.end method

.method public abstract evalForegroundUidOps(ILandroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;
.end method

.method public abstract getNonDefaultPackageModes(Ljava/lang/String;I)Landroid/util/SparseIntArray;
.end method

.method public abstract getNonDefaultUidModes(I)Landroid/util/SparseIntArray;
.end method

.method public abstract getOpModeChangedListeners(I)Landroid/util/ArraySet;
.end method

.method public abstract getPackageMode(Ljava/lang/String;II)I
.end method

.method public abstract getPackageModeChangedListeners(Ljava/lang/String;)Landroid/util/ArraySet;
.end method

.method public abstract getUidMode(II)I
.end method

.method public abstract notifyOpChanged(Lcom/android/server/appop/OnOpModeChangedListener;IILjava/lang/String;)V
.end method

.method public abstract notifyOpChangedForAllPkgsInUid(IIZLcom/android/server/appop/OnOpModeChangedListener;)V
.end method

.method public abstract notifyWatchersOfChange(II)V
.end method

.method public abstract readState()V
.end method

.method public abstract removeListener(Lcom/android/server/appop/OnOpModeChangedListener;)V
.end method

.method public abstract removePackage(Ljava/lang/String;I)Z
.end method

.method public abstract removeUid(I)V
.end method

.method public abstract setPackageMode(Ljava/lang/String;III)V
.end method

.method public abstract setUidMode(III)Z
.end method

.method public abstract shutdown()V
.end method

.method public abstract startWatchingOpModeChanged(Lcom/android/server/appop/OnOpModeChangedListener;I)V
.end method

.method public abstract startWatchingPackageModeChanged(Lcom/android/server/appop/OnOpModeChangedListener;Ljava/lang/String;)V
.end method

.method public abstract systemReady()V
.end method

.method public abstract writeState()V
.end method
