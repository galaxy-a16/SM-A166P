.class public Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field public deathCount:I

.field public final synthetic this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;


# direct methods
.method public constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;->deathCount:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 1

    iget p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;->deathCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;->deathCount:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Weaver HIDL HAL died. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;->deathCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "times"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SyntheticPasswordManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$fgetmWeaverHidlService(Lcom/android/server/locksettings/SyntheticPasswordManager;)Lcom/android/server/locksettings/WeaverHidlAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/locksettings/WeaverHidlAdapter;->getHidlService()Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/hardware/weaver/V1_0/IWeaver;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to unlinkToDeath"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverHidlDeathRecipient;->this$0:Lcom/android/server/locksettings/SyntheticPasswordManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->-$$Nest$fputmWeaver(Lcom/android/server/locksettings/SyntheticPasswordManager;Landroid/hardware/weaver/IWeaver;)V

    return-void
.end method
