.class public Lcom/android/server/knox/SeparatedAppsAnalytics;
.super Ljava/lang/Object;
.source "SeparatedAppsAnalytics.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final context:Landroid/content/Context;

.field public final ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.build.type"

    .line 17
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/knox/SeparatedAppsAnalytics;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/knox/IKnoxAnalyticsContainer;Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SeparatedAppsAnalytics"

    .line 16
    iput-object v0, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->TAG:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    .line 24
    iput-object p2, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5

    .line 28
    iget-object v0, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v0}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getSeparatedAppsContainerId()J

    move-result-wide v0

    const-string v2, "id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 29
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string v1, "KNOX_APP_SEPARATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 33
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 34
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 35
    :cond_1
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 36
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_2
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_3

    .line 38
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 39
    :cond_3
    instance-of v4, v3, [Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 40
    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 42
    :cond_4
    iget-object p0, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {p0, v0}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->sendAnalyticsLog(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 43
    sget-boolean p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->DEBUG:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeparatedAppsAnalytics"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public logEventActivationForAppSep(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    const-string v0, "PACKAGE_INFO"

    .line 48
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "e"

    .line 50
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "pN"

    .line 51
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "add"

    const/4 v3, 0x1

    .line 52
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "noIP"

    const/4 v3, 0x0

    .line 54
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "noWP"

    .line 55
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    invoke-virtual {p0, v2, v0}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public logEventDeactivationForAppSep()V
    .locals 4

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "e"

    const-string v2, "APP_SEPARATION_REMOVED"

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "rS"

    const/4 v3, 0x0

    .line 117
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    invoke-virtual {p0, v0, v2}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onAcitivtyChange(ILjava/lang/String;)V
    .locals 3

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "e"

    const-string v2, "ACTIVITY_STAMP"

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "pN"

    .line 124
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v1, p2, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string/jumbo p2, "pV"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, v0, v2}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onPackageChanged(ILjava/lang/String;I)V
    .locals 6

    const-string v0, "PACKAGE_INFO"

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v1, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getVisibleApps(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 133
    iget-object v5, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v5, v4, p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->isSeparatedAppsIndepdentApp(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {p1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getSeparatedAppsConfig()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "APP_SEPARATION_APP_LIST"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 138
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "e"

    .line 139
    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "pN"

    .line 140
    invoke-virtual {v1, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "add"

    .line 141
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "noIP"

    .line 142
    invoke-virtual {v1, p2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "noWP"

    if-nez p1, :cond_2

    goto :goto_1

    .line 143
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    invoke-virtual {p0, v1, v0}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onSeparatedAppsCreated()V
    .locals 6

    .line 64
    iget-object v0, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v0}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getSeparatedAppsConfig()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "APP_SEPARATION_OUTSIDE"

    const/4 v2, 0x0

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v1}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getDeviceOwnerPackage()Ljava/lang/String;

    move-result-object v1

    .line 73
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "e"

    const-string v5, "APP_SEPARATION_CREATED"

    .line 74
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "wP"

    .line 75
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "pN"

    .line 76
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v0, v1, v2}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string/jumbo v1, "pV"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v3, v5}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public onSeparatedAppsPolicyUpdated()V
    .locals 6

    .line 82
    iget-object v0, p0, Lcom/android/server/knox/SeparatedAppsAnalytics;->ifKnoxAnalyticsContainer:Lcom/android/server/knox/IKnoxAnalyticsContainer;

    invoke-interface {v0}, Lcom/android/server/knox/IKnoxAnalyticsContainer;->getSeparatedAppsConfig()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "APP_SEPARATION_OUTSIDE"

    const/4 v2, 0x0

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "APP_SEPARATION_APP_LIST"

    .line 89
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_3

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 100
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 107
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "e"

    const-string v4, "APP_SEPARATION_POLICYUPDATE"

    .line 108
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "wP"

    .line 109
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "wLp"

    .line 110
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, v0, v4}, Lcom/android/server/knox/SeparatedAppsAnalytics;->logEvent(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
