.class public Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;
.super Ljava/lang/Object;
.source "AndroidPackageSplitImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/AndroidPackageSplit;


# instance fields
.field public final mClassLoaderName:Ljava/lang/String;

.field public mDependencies:Ljava/util/List;

.field public final mFlags:I

.field public final mName:Ljava/lang/String;

.field public final mPath:Ljava/lang/String;

.field public final mRevisionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    .line 46
    iput p3, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    .line 47
    iput p4, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    .line 48
    iput-object p5, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 95
    :cond_0
    instance-of v1, p1, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 96
    :cond_1
    check-cast p1, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;

    .line 97
    iget v1, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    iget v3, p1, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    iget v3, p1, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    .line 98
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    .line 99
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    return v2

    .line 102
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p1, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    move v1, v2

    .line 106
    :goto_1
    iget-object v3, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 107
    iget-object v3, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    .line 108
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getName()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return v0
.end method

.method public fillDependencies(Ljava/util/List;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iput-object p1, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    return-void

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot fill split dependencies more than once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getClassLoaderName()Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    return-object p0
.end method

.method public getDependencies()Ljava/util/List;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    return-object p0
.end method

.method public getRevisionCode()I
    .locals 0

    .line 72
    iget p0, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    return p0
.end method

.method public hashCode()I
    .locals 5

    .line 120
    iget-object v0, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mPath:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mRevisionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mClassLoaderName:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 121
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 122
    iget-object v3, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mDependencies:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/AndroidPackageSplit;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackageSplit;->getName()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v0, v0, 0x1f

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    .line 123
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isHasCode()Z
    .locals 0

    .line 77
    iget p0, p0, Lcom/android/server/pm/pkg/AndroidPackageSplitImpl;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
