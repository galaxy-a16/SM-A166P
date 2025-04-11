.class public Lcom/google/firebase/messaging/FirebaseMessagingService;
.super Lcom/google/firebase/messaging/g;
.source "SourceFile"


# static fields
.field public static final ACTION_DIRECT_BOOT_REMOTE_INTENT:Ljava/lang/String; = "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

.field static final ACTION_NEW_TOKEN:Ljava/lang/String; = "com.google.firebase.messaging.NEW_TOKEN"

.field static final ACTION_REMOTE_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field static final EXTRA_TOKEN:Ljava/lang/String; = "token"

.field private static final RECENTLY_RECEIVED_MESSAGE_IDS_MAX_SIZE:I = 0xa

.field private static final recentlyReceivedMessageIds:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private rpc:Lz2/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/messaging/g;-><init>()V

    return-void
.end method

.method public static resetForTesting()V
    .locals 1

    sget-object v0, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method


# virtual methods
.method public getStartCommandIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    invoke-static {}, Lcom/google/firebase/messaging/r;->c()Lcom/google/firebase/messaging/r;

    move-result-object p0

    iget-object p0, p0, Lcom/google/firebase/messaging/r;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/Queue;

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "FirebaseMessaging"

    if-nez v3, :cond_2

    const-string v3, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "com.google.firebase.messaging.NEW_TOKEN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "token"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown intent action: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    :cond_2
    :goto_0
    const-string v3, "google.message_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x3

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/google/firebase/messaging/FirebaseMessagingService;->recentlyReceivedMessageIds:Ljava/util/Queue;

    invoke-interface {v5, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v4, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Received duplicate message: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v7

    goto :goto_2

    :cond_5
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v9

    const/16 v10, 0xa

    if-lt v9, v10, :cond_6

    invoke-interface {v5}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_6
    invoke-interface {v5, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    move v0, v6

    :goto_2
    const-string v5, "message_id"

    const-string v9, "google.product_id"

    if-nez v0, :cond_2d

    const-string v0, "message_type"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "gcm"

    if-nez v0, :cond_7

    move-object v0, v11

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/4 v13, 0x2

    sparse-switch v12, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v11, "send_event"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_3

    :cond_8
    move v11, v8

    goto :goto_4

    :sswitch_1
    const-string v11, "send_error"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_3

    :cond_9
    move v11, v13

    goto :goto_4

    :sswitch_2
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    goto :goto_3

    :cond_a
    move v11, v7

    goto :goto_4

    :sswitch_3
    const-string v11, "deleted_messages"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    goto :goto_3

    :cond_b
    move v11, v6

    goto :goto_4

    :goto_3
    const/4 v11, -0x1

    :goto_4
    if-eqz v11, :cond_2c

    if-eq v11, v7, :cond_f

    if-eq v11, v13, :cond_d

    if-eq v11, v8, :cond_c

    const-string v7, "Received message with unknown type: "

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :cond_c
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageSent(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_d
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    new-instance v4, Lcom/google/firebase/messaging/SendException;

    const-string v7, "error"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/google/firebase/messaging/SendException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v4}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onSendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_18

    :cond_f
    invoke-static/range {p1 .. p1}, Lh3/a;->T(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "_nr"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-static {v0, v11}, Lh3/a;->B(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_10
    const-string v0, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5

    :cond_11
    const-string v0, "delivery_metrics_exported_to_big_query_enabled"

    :try_start_0
    invoke-static {}, Lv4/g;->c()Lv4/g;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lv4/g;->c()Lv4/g;

    move-result-object v11

    invoke-virtual {v11}, Lv4/g;->a()V

    iget-object v11, v11, Lv4/g;->a:Landroid/content/Context;

    const-string v12, "com.google.firebase.messaging"

    invoke-virtual {v11, v12, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v14, "export_to_big_query"

    invoke-interface {v12, v14}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v12, v14, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_6

    :cond_12
    :try_start_1
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    if-eqz v12, :cond_13

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/16 v14, 0x80

    invoke-virtual {v12, v11, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    if-eqz v11, :cond_13

    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v12, :cond_13

    invoke-virtual {v12, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v11, v0, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_0
    const-string v0, "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :cond_13
    :goto_5
    move v0, v6

    :goto_6
    if-eqz v0, :cond_28

    sget-object v25, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->MESSAGE_DELIVERED:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    sget-object v11, Lcom/google/firebase/messaging/FirebaseMessaging;->m:Ll2/d;

    if-nez v11, :cond_14

    const-string v0, "TransportFactory is null. Skip exporting message delivery metrics to Big Query"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_15

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_15
    sget v12, Lo5/a;->m:I

    sget-object v12, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->UNKNOWN:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    sget-object v12, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->UNKNOWN_OS:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    const-string v12, "google.ttl"

    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    instance-of v14, v12, Ljava/lang/Integer;

    if-eqz v14, :cond_16

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    goto :goto_7

    :cond_16
    instance-of v14, v12, Ljava/lang/String;

    if-eqz v14, :cond_17

    :try_start_2
    move-object v14, v12

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_7
    move/from16 v23, v12

    goto :goto_8

    :catch_2
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Invalid TTL: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move/from16 v23, v6

    :goto_8
    const-string v12, "google.to"

    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_18

    :goto_9
    move-object/from16 v18, v12

    goto :goto_a

    :cond_18
    :try_start_3
    invoke-static {}, Lv4/g;->c()Lv4/g;

    move-result-object v12

    sget-object v14, Lcom/google/firebase/installations/a;->m:Ljava/lang/Object;

    invoke-virtual {v12}, Lv4/g;->a()V

    iget-object v12, v12, Lv4/g;->d:La5/i;

    const-class v14, Lk5/d;

    invoke-interface {v12, v14}, La5/d;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/firebase/installations/a;

    invoke-virtual {v12}, Lcom/google/firebase/installations/a;->c()Lr3/o;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;->b(Lr3/h;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_9

    :goto_a
    invoke-static {}, Lv4/g;->c()Lv4/g;

    move-result-object v12

    invoke-virtual {v12}, Lv4/g;->a()V

    iget-object v12, v12, Lv4/g;->a:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    sget-object v20, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->ANDROID:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    invoke-static {v0}, Ld/s0;->u(Landroid/os/Bundle;)Z

    move-result v12

    if-eqz v12, :cond_19

    sget-object v12, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->DISPLAY_NOTIFICATION:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    goto :goto_b

    :cond_19
    sget-object v12, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->DATA_MESSAGE:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    :goto_b
    move-object/from16 v19, v12

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1a

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_1a
    const-string v14, ""

    if-eqz v12, :cond_1b

    move-object/from16 v17, v12

    goto :goto_c

    :cond_1b
    move-object/from16 v17, v14

    :goto_c
    const-string v12, "from"

    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1c

    const-string v15, "/topics/"

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1c

    goto :goto_d

    :cond_1c
    const/4 v12, 0x0

    :goto_d
    if-eqz v12, :cond_1d

    move-object/from16 v24, v12

    goto :goto_e

    :cond_1d
    move-object/from16 v24, v14

    :goto_e
    const-string v12, "collapse_key"

    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1e

    move-object/from16 v22, v12

    goto :goto_f

    :cond_1e
    move-object/from16 v22, v14

    :goto_f
    const-string v12, "google.c.a.m_l"

    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1f

    move-object/from16 v26, v12

    goto :goto_10

    :cond_1f
    move-object/from16 v26, v14

    :goto_10
    const-string v12, "google.c.a.c_l"

    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_20

    move-object/from16 v27, v12

    goto :goto_11

    :cond_20
    move-object/from16 v27, v14

    :goto_11
    const-string v12, "google.c.sender.id"

    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    const-wide/16 v15, 0x0

    if-eqz v14, :cond_21

    :try_start_4
    invoke-virtual {v0, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_12

    :catch_3
    move-exception v0

    const-string v12, "error parsing project number"

    invoke-static {v4, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    invoke-static {}, Lv4/g;->c()Lv4/g;

    move-result-object v12

    invoke-virtual {v12}, Lv4/g;->a()V

    iget-object v14, v12, Lv4/g;->c:Lv4/i;

    iget-object v0, v14, Lv4/i;->e:Ljava/lang/String;

    if-eqz v0, :cond_22

    :try_start_5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_12
    move-wide/from16 v29, v28

    goto :goto_15

    :catch_4
    move-exception v0

    move-object v10, v0

    const-string v0, "error parsing sender ID"

    invoke-static {v4, v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_22
    invoke-virtual {v12}, Lv4/g;->a()V

    iget-object v0, v14, Lv4/i;->b:Ljava/lang/String;

    const-string v10, "1:"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_23

    goto :goto_13

    :cond_23
    const-string v10, ":"

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v10, v0

    if-ge v10, v13, :cond_24

    goto :goto_14

    :cond_24
    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_25

    goto :goto_14

    :cond_25
    :goto_13
    :try_start_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_15

    :catch_5
    move-exception v0

    move-object v10, v0

    const-string v0, "error parsing app ID"

    invoke-static {v4, v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    move-wide/from16 v29, v15

    :goto_15
    cmp-long v0, v29, v15

    if-lez v0, :cond_26

    move-wide/from16 v15, v29

    :cond_26
    new-instance v0, Lo5/a;

    move-object v14, v0

    invoke-direct/range {v14 .. v27}, Lo5/a;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;Ljava/lang/String;Ljava/lang/String;)V

    const v10, 0x6ab2d1f

    :try_start_7
    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v12, Ll2/b;

    invoke-direct {v12, v10}, Ll2/b;-><init>(Ljava/lang/Integer;)V

    const-string v10, "proto"

    new-instance v14, Ll2/c;

    invoke-direct {v14, v10}, Ll2/c;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/google/firebase/concurrent/h;

    const/16 v15, 0x15

    invoke-direct {v10, v15}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    check-cast v11, Lo2/p;

    iget-object v15, v11, Lo2/p;->a:Ljava/util/Set;

    invoke-interface {v15, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_27

    new-instance v7, Lo2/i;

    iget-object v13, v11, Lo2/p;->b:Lo2/j;

    iget-object v11, v11, Lo2/p;->c:Lo2/q;

    invoke-direct {v7, v13, v14, v10, v11}, Lo2/i;-><init>(Lo2/j;Ll2/c;Lcom/google/firebase/concurrent/h;Lo2/q;)V

    sget v10, Lo5/b;->b:I

    new-instance v10, Lf9/b;

    const/16 v11, 0x19

    invoke-direct {v10, v11}, Lf9/b;-><init>(I)V

    iput-object v0, v10, Lf9/b;->b:Ljava/lang/Object;

    new-instance v0, Lo5/b;

    iget-object v10, v10, Lf9/b;->b:Ljava/lang/Object;

    check-cast v10, Lo5/a;

    invoke-direct {v0, v10}, Lo5/b;-><init>(Lo5/a;)V

    new-instance v10, Ll2/a;

    sget-object v11, Lcom/google/android/datatransport/Priority;->DEFAULT:Lcom/google/android/datatransport/Priority;

    invoke-direct {v10, v0, v11, v12}, Ll2/a;-><init>(Lo5/b;Lcom/google/android/datatransport/Priority;Ll2/b;)V

    invoke-virtual {v7, v10}, Lo2/i;->g(Ll2/a;)V

    goto :goto_16

    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v14, v10, v6

    aput-object v15, v10, v7

    const-string v7, "%s is not supported byt this factory. Supported encodings are: %s."

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    move-exception v0

    const-string v7, "Failed to send big query analytics payload."

    invoke-static {v4, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_28
    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_29

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_29
    const-string v4, "androidx.content.wakelockid"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-static {v0}, Ld/s0;->u(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_2b

    new-instance v4, Ld/s0;

    invoke-direct {v4, v0}, Ld/s0;-><init>(Landroid/os/Bundle;)V

    new-instance v7, Li/c;

    const-string v10, "Firebase-Messaging-Network-Io"

    invoke-direct {v7, v10}, Li/c;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    new-instance v10, Lva/f;

    invoke-direct {v10, v1, v4, v7}, Lva/f;-><init>(Landroid/content/Context;Ld/s0;Ljava/util/concurrent/ExecutorService;)V

    :try_start_8
    invoke-virtual {v10}, Lva/f;->k()Z

    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    if-eqz v4, :cond_2a

    goto :goto_18

    :cond_2a
    invoke-static/range {p1 .. p1}, Lh3/a;->T(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const-string v4, "_nf"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {v4, v7}, Lh3/a;->B(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_17

    :catchall_0
    move-exception v0

    move-object v1, v0

    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v1

    :cond_2b
    :goto_17
    new-instance v4, Lcom/google/firebase/messaging/p;

    invoke-direct {v4, v0}, Lcom/google/firebase/messaging/p;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v4}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onMessageReceived(Lcom/google/firebase/messaging/p;)V

    goto :goto_18

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onDeletedMessages()V

    :cond_2d
    :goto_18
    iget-object v0, v1, Lcom/google/firebase/messaging/FirebaseMessagingService;->rpc:Lz2/b;

    if-nez v0, :cond_2e

    new-instance v0, Lz2/b;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lz2/b;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/google/firebase/messaging/FirebaseMessagingService;->rpc:Lz2/b;

    :cond_2e
    iget-object v0, v1, Lcom/google/firebase/messaging/FirebaseMessagingService;->rpc:Lz2/b;

    iget-object v1, v0, Lz2/b;->c:Lj0/b;

    invoke-virtual {v1}, Lj0/b;->c()I

    move-result v1

    const v4, 0xdedfaa0

    if-lt v1, v4, :cond_32

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2f

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2f
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {v2, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_19

    :cond_30
    const/4 v10, 0x0

    :goto_19
    if-eqz v10, :cond_31

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v9, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_31
    iget-object v0, v0, Lz2/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lz2/l;->a(Landroid/content/Context;)Lz2/l;

    move-result-object v2

    new-instance v0, Lz2/j;

    monitor-enter v2

    :try_start_9
    iget v3, v2, Lz2/l;->a:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lz2/l;->a:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit v2

    invoke-direct {v0, v3, v8, v1, v6}, Lz2/j;-><init>(IILandroid/os/Bundle;I)V

    invoke-virtual {v2, v0}, Lz2/l;->b(Lz2/j;)Lr3/o;

    goto :goto_1a

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_32
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SERVICE_NOT_AVAILABLE"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    new-instance v1, Lr3/o;

    invoke-direct {v1}, Lr3/o;-><init>()V

    invoke-virtual {v1, v0}, Lr3/o;->i(Ljava/lang/Exception;)V

    :goto_1a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7aedf14e -> :sswitch_3
        0x18f11 -> :sswitch_2
        0x308f3e91 -> :sswitch_1
        0x3090df23 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDeletedMessages()V
    .locals 0

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/p;)V
    .locals 0

    return-void
.end method

.method public onMessageSent(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public setRpcForTesting(Lz2/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/messaging/FirebaseMessagingService;->rpc:Lz2/b;

    return-void
.end method
