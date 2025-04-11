.class public Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionPolicyOberver.java"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;->this$0:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;->this$0:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->-$$Nest$mgetNfcAdapter(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;)Landroid/nfc/NfcAdapter;

    move-result-object p0

    const-string p2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    if-ne p0, v0, :cond_3

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->-$$Nest$sfputsIsFelicaAllowed(Z)V

    goto :goto_0

    :cond_1
    const-string p2, "com.sec.android.nfc.AUTH_READY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p0

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->-$$Nest$sfgetsIsFelicaAllowed()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x3

    if-eq p0, p1, :cond_2

    const/4 p1, 0x5

    if-ne p0, p1, :cond_3

    :cond_2
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->-$$Nest$sfputsIsFelicaAllowed(Z)V

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->-$$Nest$sfgetsNfcRestrictionPolicyListener()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->-$$Nest$sfgetsNfcRestrictionPolicyListener()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    move-result-object p0

    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->-$$Nest$sfgetsIsFelicaAllowed()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;->onNfcRestrictionPolicyChanged(Z)V

    :cond_3
    :goto_0
    return-void
.end method
