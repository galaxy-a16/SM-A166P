.class public Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;
.super Landroid/content/BroadcastReceiver;
.source "Heimdall.java"


# instance fields
.field public final AUTHORITY_URI:Landroid/net/Uri;

.field public final CONTENT_URI:Landroid/net/Uri;

.field public final POLICY_ITEM_URI:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/chimera/heimdall/Heimdall;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/heimdall/Heimdall;Landroid/content/Context;)V
    .locals 1

    .line 164
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string p1, "content://com.samsung.android.sm.policy"

    .line 159
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v0, "policy_item"

    .line 160
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "heimdall"

    .line 161
    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;->POLICY_ITEM_URI:Landroid/net/Uri;

    .line 165
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "sec.app.policy.UPDATE.heimdall"

    .line 166
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "sec.app.policy.UPDATE.heimdall"

    .line 172
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;->onScpmUpdate(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final onScpmUpdate(Landroid/content/Context;)V
    .locals 10

    const-string v0, "1"

    const-string v1, "0"

    const-string/jumbo v2, "ro.product.device"

    const-string v3, ""

    .line 178
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;->POLICY_ITEM_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 188
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    .line 191
    :try_start_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 192
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    if-eqz v4, :cond_1

    if-nez v5, :cond_2

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    :try_start_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string/jumbo v4, "persist.sys.heimdalld.disable"

    if-eqz v2, :cond_3

    .line 205
    :try_start_2
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/chimera/heimdall/Heimdall;->-$$Nest$fputDISABLED(Lcom/android/server/chimera/heimdall/Heimdall;Z)V

    const-string p0, "DISABLED set false"

    .line 207
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 209
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;->this$0:Lcom/android/server/chimera/heimdall/Heimdall;

    invoke-static {p0, v3}, Lcom/android/server/chimera/heimdall/Heimdall;->-$$Nest$fputDISABLED(Lcom/android/server/chimera/heimdall/Heimdall;Z)V

    const-string p0, "DISABLED set true"

    .line 212
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 216
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 217
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void

    .line 223
    :cond_4
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-void
.end method
