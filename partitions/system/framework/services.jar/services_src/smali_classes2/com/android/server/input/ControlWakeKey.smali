.class public Lcom/android/server/input/ControlWakeKey;
.super Ljava/lang/Object;
.source "ControlWakeKey.java"


# static fields
.field public static TAG:Ljava/lang/String; = "InputManager.ControlWakeKey"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDefaultWakeKey:Ljava/lang/String;

.field public mWakeKeyFilePath:Ljava/lang/String;

.field public mWakeKeyFilePath1:Ljava/lang/String;

.field public mWakeKeyFilePath2:Ljava/lang/String;

.field public mWakeKeyRefCount:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    const-string v0, "/sys/class/sec/sec_key/wakeup_keys"

    .line 45
    iput-object v0, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    const-string v0, "/sys/power/volkey_wakeup"

    .line 46
    iput-object v0, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyFilePath1:Ljava/lang/String;

    const-string v0, "/sys/class/sec/ap_pmic/volkey_wakeup"

    .line 47
    iput-object v0, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyFilePath2:Ljava/lang/String;

    const-string v0, "116,172"

    .line 48
    iput-object v0, p0, Lcom/android/server/input/ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/android/server/input/ControlWakeKey;->mContext:Landroid/content/Context;

    .line 53
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    .line 55
    iget-object p1, p0, Lcom/android/server/input/ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/ControlWakeKey;->makeWakeKeyRefCount(ZLjava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    const-string v1, "114"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    const-string v1, "115"

    .line 58
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyFilePath1:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyVolume(ZLjava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyFilePath2:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyVolume(ZLjava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/server/input/ControlWakeKey;->makeWakeKeyString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final makeWakeKeyRefCount(ZLjava/lang/String;)V
    .locals 7

    const-string v0, ","

    .line 79
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "mWakeKeyRefCount("

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 82
    array-length p1, p2

    :goto_0
    if-ge v1, p1, :cond_4

    aget-object v3, p2, v1

    .line 83
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 85
    iget-object v4, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    iget-object v4, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    goto :goto_1

    :cond_0
    move v4, v2

    .line 90
    :goto_1
    iget-object v5, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v5, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is increased: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_1
    array-length p1, p2

    :goto_2
    if-ge v1, p1, :cond_4

    aget-object v3, p2, v1

    .line 95
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 96
    iget-object v4, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    iget-object v4, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v2

    if-gtz v4, :cond_2

    .line 99
    iget-object v4, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v4, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyCode is removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 102
    :cond_2
    iget-object v5, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v5, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is decreased: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final makeWakeKeyString()Ljava/lang/String;
    .locals 4

    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 114
    iget-object p0, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v1, :cond_0

    .line 115
    aget-object v3, v2, p0

    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 119
    sget-object p0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyCodes in makeWakeKeyString is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 121
    :cond_1
    sget-object p0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mWakeKeyRefCount is empty"

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_1
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8

    .line 190
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "null"

    const-string v2, "empty"

    const-string/jumbo v3, "setWakeKeyDynamically: pkg="

    if-eqz v0, :cond_1

    .line 191
    sget-object p0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 194
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, ", keyCodes="

    if-eqz v0, :cond_3

    .line 195
    sget-object p0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 196
    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 200
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 201
    sget-object v5, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", put="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v3, p0, Lcom/android/server/input/ControlWakeKey;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_4

    .line 206
    sget-object p0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "pm is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 210
    :cond_4
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 212
    array-length v5, v4

    if-nez v5, :cond_5

    goto/16 :goto_6

    .line 216
    :cond_5
    array-length v1, v4

    const/4 v2, 0x0

    move v5, v2

    :goto_2
    if-ge v5, v1, :cond_7

    aget-object v6, v4, v5

    .line 217
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    move v1, v2

    .line 226
    :goto_3
    :try_start_0
    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_8

    .line 228
    sget-object p0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string p1, "appinfo is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_8
    if-eqz v1, :cond_9

    .line 236
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v5

    if-nez v5, :cond_b

    .line 237
    :cond_9
    sget-object v5, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uidHasPackage is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", appinfo.privateFlags is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_a

    .line 240
    array-length v1, v4

    :goto_4
    if-ge v2, v1, :cond_a

    aget-object v3, v4, v2

    .line 241
    sget-object v5, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packages with uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 244
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_c

    .line 251
    :cond_b
    :try_start_1
    invoke-virtual {p0, p2, p3}, Lcom/android/server/input/ControlWakeKey;->setWakeKeyDynamicallyInternal(ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 253
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_5
    return-void

    .line 245
    :cond_c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "only system app can use this method, but "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not system app"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 232
    :catch_1
    sget-object p0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string p1, "NameNotFoundException is occured"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 213
    :cond_d
    :goto_6
    sget-object p0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "packages: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_e

    goto :goto_7

    :cond_e
    move-object v1, v2

    :goto_7
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setWakeKeyDynamicallyInternal(ZLjava/lang/String;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/server/input/ControlWakeKey;->mDefaultWakeKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/input/ControlWakeKey;->makeWakeKeyRefCount(ZLjava/lang/String;)V

    .line 69
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/ControlWakeKey;->makeWakeKeyRefCount(ZLjava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    const-string p2, "114"

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyRefCount:Ljava/util/HashMap;

    const-string p2, "115"

    .line 72
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 73
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyFilePath1:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyVolume(ZLjava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyFilePath2:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyVolume(ZLjava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/server/input/ControlWakeKey;->makeWakeKeyString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/input/ControlWakeKey;->writeWakeKeyString(Ljava/lang/String;)V

    return-void
.end method

.method public final writeWakeKeyString(Ljava/lang/String;)V
    .locals 4

    .line 160
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 163
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    :try_start_1
    sget-object v0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string v1, "FileOutputStream is passed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v2

    .line 166
    :catch_1
    sget-object v0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/input/ControlWakeKey;->mWakeKeyFilePath:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_0

    .line 171
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 172
    sget-object p0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string p1, "fosWakeKey writing is passed"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 175
    :catch_2
    sget-object p0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string p1, "fosWakeKey writing is failed"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 180
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 182
    sget-object p0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string p1, "closing fosWakeKey is passed"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 185
    :catch_3
    sget-object p0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string p1, "closing fosWakeKey is failed"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public final writeWakeKeyVolume(ZLjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    .line 129
    :goto_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 132
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 133
    :try_start_1
    sget-object p1, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string v0, "FileOutputStreamvolume is passed"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v0, v1

    .line 135
    :catch_1
    sget-object p1, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_1

    .line 140
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 141
    sget-object p1, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fosWakeKeyvolume writing is passed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 144
    :catch_2
    sget-object p0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string p1, "fosWakeKeyvolume writing is failed"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 149
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 151
    sget-object p0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string p1, "closing fosWakeKeyvolume is passed"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 154
    :catch_3
    sget-object p0, Lcom/android/server/input/ControlWakeKey;->TAG:Ljava/lang/String;

    const-string p1, "closing fosWakeKeyvolume is failed"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    return-void
.end method
