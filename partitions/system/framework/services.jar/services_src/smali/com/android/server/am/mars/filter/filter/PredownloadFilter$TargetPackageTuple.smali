.class public Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;
.super Ljava/lang/Object;
.source "PredownloadFilter.java"


# instance fields
.field public pkgName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

.field public uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/PredownloadFilter;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;->this$0:Lcom/android/server/am/mars/filter/filter/PredownloadFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;->uid:I

    iput-object p3, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;->pkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v2, p1, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;->pkgName:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;->uid:I

    iget p1, p1, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;->uid:I

    if-ne p0, p1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/PredownloadFilter$TargetPackageTuple;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
