.class public final Lcom/android/server/pm/pkg/SuspendParams;
.super Ljava/lang/Object;
.source "SuspendParams.java"


# instance fields
.field public final appExtras:Landroid/os/PersistableBundle;

.field public final dialogInfo:Landroid/content/pm/SuspendDialogInfo;

.field public final launcherExtras:Landroid/os/PersistableBundle;


# direct methods
.method public constructor <init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/pm/pkg/SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    .line 53
    iput-object p2, p0, Lcom/android/server/pm/pkg/SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    .line 54
    iput-object p3, p0, Lcom/android/server/pm/pkg/SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    return-void
.end method

.method public static restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/pkg/SuspendParams;
    .locals 10

    const-string v0, "FrameworkPackageUserState"

    .line 130
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 133
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    const/4 v7, 0x3

    if-ne v5, v7, :cond_1

    .line 135
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v1, :cond_a

    :cond_1
    if-eq v5, v7, :cond_0

    const/4 v7, 0x4

    if-ne v5, v7, :cond_2

    goto :goto_0

    .line 140
    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x20149871

    const/4 v9, 0x2

    if-eq v7, v8, :cond_5

    const v8, -0x15b69ed

    if-eq v7, v8, :cond_4

    const v8, 0x61017530

    if-eq v7, v8, :cond_3

    goto :goto_1

    :cond_3
    const-string v7, "launcher-extras"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v9

    goto :goto_2

    :cond_4
    const-string v7, "dialog-info"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    const-string v7, "app-extras"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v6

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v5, -0x1

    :goto_2
    if-eqz v5, :cond_9

    if-eq v5, v6, :cond_8

    if-eq v5, v9, :cond_7

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in SuspendParams. Ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_7
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v4

    goto :goto_0

    .line 145
    :cond_8
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    goto :goto_0

    .line 142
    :cond_9
    invoke-static {p0}, Landroid/content/pm/SuspendDialogInfo;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Exception while trying to parse SuspendParams, some fields may default"

    .line 157
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    :cond_a
    new-instance p0, Lcom/android/server/pm/pkg/SuspendParams;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/pm/pkg/SuspendParams;-><init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 62
    :cond_0
    instance-of v1, p1, Lcom/android/server/pm/pkg/SuspendParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 65
    :cond_1
    check-cast p1, Lcom/android/server/pm/pkg/SuspendParams;

    .line 66
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    iget-object v3, p1, Lcom/android/server/pm/pkg/SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    iget-object v3, p1, Lcom/android/server/pm/pkg/SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    invoke-static {v1, v3}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 72
    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    iget-object p1, p1, Lcom/android/server/pm/pkg/SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    invoke-static {p0, p1}, Landroid/os/BaseBundle;->kindofEquals(Landroid/os/BaseBundle;Landroid/os/BaseBundle;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public getAppExtras()Landroid/os/PersistableBundle;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public getDialogInfo()Landroid/content/pm/SuspendDialogInfo;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    return-object p0
.end method

.method public getLauncherExtras()Landroid/os/PersistableBundle;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/server/pm/pkg/SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 81
    iget-object v1, p0, Lcom/android/server/pm/pkg/SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/PersistableBundle;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 82
    iget-object p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/PersistableBundle;->size()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/android/server/pm/pkg/SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "dialog-info"

    .line 93
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    iget-object v2, p0, Lcom/android/server/pm/pkg/SuspendParams;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v2, p1}, Landroid/content/pm/SuspendDialogInfo;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 95
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/pkg/SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    const-string v2, "FrameworkPackageUserState"

    if-eqz v0, :cond_1

    const-string v0, "app-extras"

    .line 98
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/pkg/SuspendParams;->appExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v3, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Exception while trying to write appExtras. Will be lost on reboot"

    .line 102
    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :goto_0
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/pkg/SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_2

    const-string v0, "launcher-extras"

    .line 108
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/pkg/SuspendParams;->launcherExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v3, "Exception while trying to write launcherExtras. Will be lost on reboot"

    .line 112
    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :goto_1
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    return-void
.end method
