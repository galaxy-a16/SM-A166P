.class public Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants$ChallengeOperationType;
    }
.end annotation


# static fields
.field public static final AES_CIPHER_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field public static final FINISH_PPP_ACTION:Ljava/lang/String; = "com.samsung.android.kmxservice.escrowvault.FINISH_PPP"

.field public static final KEY_BACK_OFF_TIME:Ljava/lang/String; = "back_off_time"

.field public static final KEY_CERT_CHAIN:Ljava/lang/String; = "cert_chain"

.field public static final KEY_CREDENTIAL_INFO:Ljava/lang/String; = "credential_info"

.field public static final KEY_DEVICE_ID:Ljava/lang/String; = "device_ID"

.field public static final KEY_DEVICE_LIST:Ljava/lang/String; = "device_list"

.field public static final KEY_DEVICE_LIST_RESULT:Ljava/lang/String; = "device_list_result"

.field public static final KEY_ECERK:Ljava/lang/String; = "ecerk"

.field public static final KEY_ENC_TOKEN:Ljava/lang/String; = "enc_token"

.field public static final KEY_EVS:Ljava/lang/String; = "evs"

.field public static final KEY_EVSW:Ljava/lang/String; = "evsw"

.field public static final KEY_FAILURE_COUNT:Ljava/lang/String; = "failure_count"

.field public static final KEY_HSM_SIGN_CERT:Ljava/lang/String; = "hsm_sign_cert"

.field public static final KEY_IS_SHOWING_INCORRECT_MESSAGE:Ljava/lang/String; = "is_showing_incorrect_message"

.field public static final KEY_IS_VERIFIER_REGISTERED:Ljava/lang/String; = "is_verifier_registered"

.field public static final KEY_IV:Ljava/lang/String; = "iv"

.field public static final KEY_M2:Ljava/lang/String; = "m2"

.field public static final KEY_PPP:Ljava/lang/String; = "ppp"

.field public static final KEY_PRIVATE_KEY:Ljava/lang/String; = "private_key"

.field public static final KEY_PUBLIC_KEY:Ljava/lang/String; = "public_key"

.field public static final KEY_PUBLIC_KEY_SIGNATURE:Ljava/lang/String; = "public_key_signature"

.field public static final KEY_SIGN_CERK:Ljava/lang/String; = "sign_cerk"

.field public static final KEY_SIGN_ECERK:Ljava/lang/String; = "sign_ecerk"

.field public static final KEY_SIGN_EVSW:Ljava/lang/String; = "sign_evsw"

.field public static final KEY_VERIFIER_TYPE:Ljava/lang/String; = "verifier_type"

.field public static final KEY_W_KEY:Ljava/lang/String; = "w_key"

.field public static final KMX_UPDATE_VERIFIER_ACTION:Ljava/lang/String; = "com.samsung.android.kmxservice.escrowvault.UPDATE_VERIFIER"

.field public static final PACKAGE_LIST:Ljava/util/HashMap;

.field public static final PROP_ESCROW_VAULT_SA_SIGNED:Ljava/lang/String; = "persist.escrowvault.sa.signed"

.field public static final RESULT_DELETE_ESCROW:I = 0x4d2

.field public static final RSA_CIPHER_ALGORITHM:Ljava/lang/String; = "RSA/ECB/OAEPPadding"

.field public static final VERIFIER_TYPE_PASSWORD:I = 0x2

.field public static final VERIFIER_TYPE_PATTERN:I = 0x1

.field public static final VERIFIER_TYPE_PIN:I = 0x0

.field public static final VERIFY_PPP_ACTION:Ljava/lang/String; = "com.samsung.android.kmxservice.escrowvault.VERIFY_PPP"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/escrowvault/constants/EscrowConstants;->PACKAGE_LIST:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
