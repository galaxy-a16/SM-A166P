.class public Lcom/android/server/appbinding/AppBindingConstants;
.super Ljava/lang/Object;
.source "AppBindingConstants.java"


# instance fields
.field public final SERVICE_RECONNECT_BACKOFF_INCREASE:D

.field public final SERVICE_RECONNECT_BACKOFF_SEC:J

.field public final SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

.field public final SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

.field public final SMS_APP_BIND_FLAGS:I

.field public final SMS_SERVICE_ENABLED:Z

.field public final sourceSettings:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 12

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingConstants;->sourceSettings:Ljava/lang/String;

    .line 85
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 87
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppBindingService"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo p1, "service_reconnect_backoff_sec"

    const-wide/16 v1, 0xa

    .line 94
    invoke-virtual {v0, p1, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    const-string/jumbo p1, "service_reconnect_backoff_increase"

    const/high16 v3, 0x40000000    # 2.0f

    .line 97
    invoke-virtual {v0, p1, v3}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result p1

    float-to-double v3, p1

    .line 100
    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    .line 101
    invoke-virtual {p1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    const-string/jumbo p1, "service_reconnect_max_backoff_sec"

    .line 100
    invoke-virtual {v0, p1, v5, v6}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string/jumbo p1, "sms_service_enabled"

    const/4 v7, 0x1

    .line 103
    invoke-virtual {v0, p1, v7}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string/jumbo v7, "sms_app_bind_flags"

    const/high16 v8, 0x44000000    # 512.0f

    .line 105
    invoke-virtual {v0, v7, v8}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 109
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x2

    .line 110
    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    const-string/jumbo v10, "service_stable_connection_threshold_sec"

    .line 109
    invoke-virtual {v0, v10, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x5

    .line 113
    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 117
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 120
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 123
    iput-wide v0, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_SEC:J

    .line 124
    iput-wide v2, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_INCREASE:D

    .line 125
    iput-wide v4, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    .line 126
    iput-wide v8, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    .line 127
    iput-boolean p1, p0, Lcom/android/server/appbinding/AppBindingConstants;->SMS_SERVICE_ENABLED:Z

    .line 128
    iput v7, p0, Lcom/android/server/appbinding/AppBindingConstants;->SMS_APP_BIND_FLAGS:I

    return-void
.end method

.method public static initializeFromString(Ljava/lang/String;)Lcom/android/server/appbinding/AppBindingConstants;
    .locals 1

    .line 135
    new-instance v0, Lcom/android/server/appbinding/AppBindingConstants;

    invoke-direct {v0, p0}, Lcom/android/server/appbinding/AppBindingConstants;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    .line 142
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Constants: "

    .line 143
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingConstants;->sourceSettings:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  SERVICE_RECONNECT_BACKOFF_SEC: "

    .line 147
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 148
    iget-wide v0, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_SEC:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 150
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  SERVICE_RECONNECT_BACKOFF_INCREASE: "

    .line 151
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    iget-wide v0, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_INCREASE:D

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(D)V

    .line 154
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  SERVICE_RECONNECT_MAX_BACKOFF_SEC: "

    .line 155
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    iget-wide v0, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 158
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  SERVICE_STABLE_CONNECTION_THRESHOLD_SEC: "

    .line 159
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 160
    iget-wide v0, p0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 162
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  SMS_SERVICE_ENABLED: "

    .line 163
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    iget-boolean v0, p0, Lcom/android/server/appbinding/AppBindingConstants;->SMS_SERVICE_ENABLED:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 166
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  SMS_APP_BIND_FLAGS: 0x"

    .line 167
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    iget p0, p0, Lcom/android/server/appbinding/AppBindingConstants;->SMS_APP_BIND_FLAGS:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
