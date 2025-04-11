.class public final Lf9/c;
.super Le9/b;
.source "SourceFile"


# static fields
.field public static c:Lf9/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Le9/b;-><init>(Landroid/content/Context;)V

    monitor-enter p0

    :try_start_0
    const-string p1, "smp_preference_version"

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Le9/b;->d(ILjava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_3

    const-string v1, "c"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "upgrade preference. oldVersion: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", newVersion: 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lj3/f;->l(Ljava/lang/String;Ljava/lang/String;)V

    if-ge p1, v0, :cond_2

    monitor-enter p0

    :try_start_1
    const-string p1, "user_opt_in_option"

    invoke-virtual {p0, p1}, Le9/b;->a(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;->USER_BASED:Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;->DEVICE_BASED:Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    :goto_0
    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_2
    sget-object p1, Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;->DEVICE_BASED:Lcom/samsung/android/sdk/smp/SmpConstants$OptInPolicy;

    :cond_1
    const-string v1, "opt_in_policy"

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_1
    monitor-enter p0

    :try_start_3
    const-string p1, "smp_preference_version"

    invoke-virtual {p0, v0, p1}, Le9/b;->t(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_3
    :goto_2
    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized G(Landroid/content/Context;)Lf9/c;
    .locals 2

    const-class v0, Lf9/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf9/c;->c:Lf9/c;

    if-nez v1, :cond_0

    new-instance v1, Lf9/c;

    invoke-direct {v1, p0}, Lf9/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lf9/c;->c:Lf9/c;

    :cond_0
    sget-object p0, Lf9/c;->c:Lf9/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final C(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lf9/b;->c(Landroid/content/Context;)Lf9/b;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final E(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized F()I
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "fcm_service_retry_count"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Le9/b;->d(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized H(I)Ljava/lang/String;
    .locals 2

    const-string v0, "chan_"

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized I()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "pid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized J()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "ptype"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized K()J
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "smp_first_upload_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Le9/b;->g(JLjava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized L()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "smpid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Le9/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized M(Landroid/content/Context;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v0, "c"

    const-string v1, "migrate ppmt data"

    invoke-static {v0, v1}, Lj3/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Sppmt"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p0}, Lf9/c;->L()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "ppmtid"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "uid"

    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "noti_sound_uri"

    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "noti_sound_enabled"

    invoke-interface {p1, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "noti_vibrate_pattern"

    invoke-interface {p1, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "noti_vibrate_enabled"

    invoke-interface {p1, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string v8, "noti_color"

    invoke-interface {p1, v8, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v8, "bAgreementDate"

    invoke-interface {p1, v8, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "chan_1"

    invoke-interface {p1, v9, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "chan_2"

    invoke-interface {p1, v10, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    :try_start_1
    const-string v10, "smpid"

    invoke-virtual {p0, v10, v0}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :try_start_3
    const-string v0, "uid"

    invoke-virtual {p0, v0, v3}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    :try_start_5
    const-string v0, "noti_sound_uri"

    invoke-virtual {p0, v0, v4}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "noti_vibrate_pattern"

    invoke-virtual {p0, v0, v6}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    :try_start_7
    const-string v0, "noti_sound_enabled"

    invoke-virtual {p0, v0, v5}, Le9/b;->r(Ljava/lang/String;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    monitor-exit p0

    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :try_start_9
    const-string v0, "noti_vibrate_enabled"

    invoke-virtual {p0, v0, v7}, Le9/b;->r(Ljava/lang/String;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    monitor-exit p0

    monitor-enter p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :try_start_b
    const-string v0, "noti_color"

    invoke-virtual {p0, v1, v0}, Le9/b;->t(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    monitor-exit p0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-nez v0, :cond_4

    :try_start_d
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    monitor-enter p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :try_start_e
    const-string v3, "optintime"

    invoke-virtual {p0, v3, v0, v1}, Le9/b;->v(Ljava/lang/String;J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    monitor-exit p0

    goto :goto_3

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :catch_0
    :cond_4
    :goto_3
    :try_start_10
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->Notice:Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v9}, Lf9/c;->P(ILjava/lang/String;)V

    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;->Marketing:Lcom/samsung/android/sdk/smp/SmpConfiguration$ChannelInfo$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Lf9/c;->P(ILjava/lang/String;)V

    :cond_6
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :cond_7
    :goto_4
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized N(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "ackPeriod"

    invoke-virtual {p0, v0, p1, p2}, Le9/b;->v(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized O(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "contentsType"

    invoke-virtual {p0, v0, p1}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized P(ILjava/lang/String;)V
    .locals 2

    const-string v0, "chan_"

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Le9/b;->x(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized Q(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "upload_fail_count"

    invoke-virtual {p0, p1, v0}, Le9/b;->t(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lf9/b;->c(Landroid/content/Context;)Lf9/b;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Le9/b;->b:Ljava/lang/String;

    const-string v1, "pref_boolean/"

    invoke-static {v0, p0, v1}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e(ILandroid/content/Context;Ljava/lang/String;)I
    .locals 0

    invoke-static {p2}, Lf9/b;->c(Landroid/content/Context;)Lf9/b;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p2, Landroid/content/SharedPreferences;

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Le9/b;->b:Ljava/lang/String;

    const-string v1, "pref_integer/"

    invoke-static {v0, p0, v1}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(JLandroid/content/Context;Ljava/lang/String;)J
    .locals 0

    invoke-static {p3}, Lf9/b;->c(Landroid/content/Context;)Lf9/b;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object p3, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p3, Landroid/content/SharedPreferences;

    invoke-interface {p3, p4, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Le9/b;->b:Ljava/lang/String;

    const-string v1, "pref_long/"

    invoke-static {v0, p0, v1}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Le9/b;->b:Ljava/lang/String;

    const-string v1, "pref_delete/"

    invoke-static {v0, p0, v1}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final m(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lf9/b;->c(Landroid/content/Context;)Lf9/b;

    move-result-object p0

    monitor-enter p0

    if-nez p2, :cond_0

    :goto_0
    monitor-exit p0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final o()Ljava/util/Set;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Le9/b;->b:Ljava/lang/String;

    const-string v1, "pref_string/"

    invoke-static {v0, p0, v1}, Landroidx/activity/b;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final s(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1}, Lf9/b;->c(Landroid/content/Context;)Lf9/b;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final u(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p2}, Lf9/b;->c(Landroid/content/Context;)Lf9/b;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p2, Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final w(JLandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p3}, Lf9/b;->c(Landroid/content/Context;)Lf9/b;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object p3, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p3, Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, p4, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lf9/b;->c(Landroid/content/Context;)Lf9/b;

    move-result-object p0

    monitor-enter p0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p1, p0, Lf9/b;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
