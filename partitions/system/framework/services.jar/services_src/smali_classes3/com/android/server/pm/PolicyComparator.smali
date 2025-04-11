.class public final Lcom/android/server/pm/PolicyComparator;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public duplicateFound:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 766
    iput-boolean v0, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/pm/Policy;Lcom/android/server/pm/Policy;)I
    .locals 5

    .line 776
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    .line 777
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasInnerPackages()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, -0x1

    :cond_0
    return v2

    .line 781
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->getSignatures()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->getSignatures()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 783
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->hasGlobalSeinfo()Z

    move-result v0

    const-string v1, "Duplicate policy entry: "

    const-string v3, "SELinuxMMAC"

    if-eqz v0, :cond_2

    .line 784
    iput-boolean v2, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->getInnerPackages()Ljava/util/Map;

    move-result-object v0

    .line 790
    invoke-virtual {p2}, Lcom/android/server/pm/Policy;->getInnerPackages()Ljava/util/Map;

    move-result-object p2

    .line 791
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 792
    iput-boolean v2, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    .line 793
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/Policy;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 764
    check-cast p1, Lcom/android/server/pm/Policy;

    check-cast p2, Lcom/android/server/pm/Policy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PolicyComparator;->compare(Lcom/android/server/pm/Policy;Lcom/android/server/pm/Policy;)I

    move-result p0

    return p0
.end method

.method public foundDuplicate()Z
    .locals 0

    .line 769
    iget-boolean p0, p0, Lcom/android/server/pm/PolicyComparator;->duplicateFound:Z

    return p0
.end method
