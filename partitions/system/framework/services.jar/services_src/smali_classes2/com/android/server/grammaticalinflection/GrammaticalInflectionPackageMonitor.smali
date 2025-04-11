.class public Lcom/android/server/grammaticalinflection/GrammaticalInflectionPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "GrammaticalInflectionPackageMonitor.java"


# instance fields
.field public mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionPackageMonitor;->mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->onPackageAdded(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageDataCleared(Ljava/lang/String;I)V
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionPackageMonitor;->mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    invoke-virtual {p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->onPackageDataCleared()V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionPackageMonitor;->mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    invoke-virtual {p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->onPackageRemoved()V

    return-void
.end method
