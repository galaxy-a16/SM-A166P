.class public Lcom/android/server/display/DisplayGroup;
.super Ljava/lang/Object;
.source "DisplayGroup.java"


# instance fields
.field public mChangeCount:I

.field public final mDisplays:Ljava/util/List;

.field public final mGroupId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    .line 36
    iput p1, p0, Lcom/android/server/display/DisplayGroup;->mGroupId:I

    return-void
.end method


# virtual methods
.method public addDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 1

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayGroup;->containsLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 52
    iget-object p0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public containsLocked(Lcom/android/server/display/LogicalDisplay;)Z
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getChangeCountLocked()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    return p0
.end method

.method public getGroupId()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/android/server/display/DisplayGroup;->mGroupId:I

    return p0
.end method

.method public getIdLocked(I)I
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/LogicalDisplay;

    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result p0

    return p0
.end method

.method public getSizeLocked()I
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public isEmptyLocked()Z
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z
    .locals 1

    .line 67
    iget v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/DisplayGroup;->mChangeCount:I

    .line 68
    iget-object p0, p0, Lcom/android/server/display/DisplayGroup;->mDisplays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
