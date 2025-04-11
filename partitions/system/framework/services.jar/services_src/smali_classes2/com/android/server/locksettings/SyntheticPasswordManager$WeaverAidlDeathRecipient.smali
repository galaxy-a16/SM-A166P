.class public Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverAidlDeathRecipient;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public deathCount:I

.field public final synthetic this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V
    .locals 0

    .line 1073
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverAidlDeathRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1074
    iput p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverAidlDeathRecipient;->deathCount:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverAidlDeathRecipient-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverAidlDeathRecipient;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1077
    iget v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverAidlDeathRecipient;->deathCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverAidlDeathRecipient;->deathCount:I

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Weaver AIDL HAL died. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverAidlDeathRecipient;->deathCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyntheticPasswordManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverAidlDeathRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$fgetmWeaver(Lcom/android/server/locksettings/SyntheticPasswordManager;)Landroid/hardware/weaver/IWeaver;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to unlinkToDeath"

    .line 1082
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1084
    :goto_0
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverAidlDeathRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$fputmWeaver(Lcom/android/server/locksettings/SyntheticPasswordManager;Landroid/hardware/weaver/IWeaver;)V

    return-void
.end method
