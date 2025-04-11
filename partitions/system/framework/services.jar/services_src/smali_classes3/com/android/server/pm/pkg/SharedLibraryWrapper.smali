.class public Lcom/android/server/pm/pkg/SharedLibraryWrapper;
.super Ljava/lang/Object;
.source "SharedLibraryWrapper.java"

# interfaces
.implements Lcom/android/server/pm/pkg/SharedLibrary;


# instance fields
.field public cachedDependenciesList:Ljava/util/List;

.field public final mInfo:Landroid/content/pm/SharedLibraryInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/SharedLibraryInfo;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    return-void
.end method


# virtual methods
.method public getAllCodePaths()Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getAllCodePaths()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDeclaringPackage()Landroid/content/pm/VersionedPackage;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDeclaringPackage()Landroid/content/pm/VersionedPackage;

    move-result-object p0

    return-object p0
.end method

.method public getDependencies()Ljava/util/List;
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->cachedDependenciesList:Ljava/util/List;

    if-nez v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {v0}, Landroid/content/pm/SharedLibraryInfo;->getDependencies()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->cachedDependenciesList:Ljava/util/List;

    goto :goto_1

    .line 100
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 101
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 102
    new-instance v3, Lcom/android/server/pm/pkg/SharedLibraryWrapper;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/SharedLibraryInfo;

    invoke-direct {v3, v4}, Lcom/android/server/pm/pkg/SharedLibraryWrapper;-><init>(Landroid/content/pm/SharedLibraryInfo;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->cachedDependenciesList:Ljava/util/List;

    .line 107
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->cachedDependenciesList:Ljava/util/List;

    return-object p0
.end method

.method public getDependentPackages()Ljava/util/List;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependentPackages()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInfo()Landroid/content/pm/SharedLibraryInfo;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    move-result p0

    return p0
.end method

.method public getVersion()J
    .locals 2

    .line 67
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    move-result-wide v0

    return-wide v0
.end method

.method public isNative()Z
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/pm/pkg/SharedLibraryWrapper;->mInfo:Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->isNative()Z

    move-result p0

    return p0
.end method
