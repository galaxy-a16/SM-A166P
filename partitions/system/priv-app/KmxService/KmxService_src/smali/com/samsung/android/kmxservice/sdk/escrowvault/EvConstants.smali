.class public Lcom/samsung/android/kmxservice/sdk/escrowvault/EvConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_CAN_DELETE_CREDENTIAL:Ljava/lang/String; = "can_delete_credential"

.field public static final KEY_CHALLENGE:Ljava/lang/String; = "challenge"

.field public static final KEY_CHALLENGE_ID:Ljava/lang/String; = "challenge_id"

.field public static final KEY_CREDENTIAL_ID:Ljava/lang/String; = "credential_id"

.field public static final KEY_ENC_2_CRED:Ljava/lang/String; = "enc_2_cred"

.field public static final KEY_ENC_CRED:Ljava/lang/String; = "enc_cred"

.field public static final KEY_EV_ERROR:Ljava/lang/String; = "ev_error"

.field public static final KEY_EV_SIGN_CERT:Ljava/lang/String; = "ev_sign_cert"

.field public static final KEY_EXIST_CREDENTIAL:Ljava/lang/String; = "exist_credential"

.field public static final KEY_HSM_ENC_CRED_CERT:Ljava/lang/String; = "hsm_enc_cred_cert"

.field public static final KEY_HSM_ENC_VERIFIER_CERT:Ljava/lang/String; = "hsm_enc_verifier_cert"

.field public static final KEY_KMX_ID:Ljava/lang/String; = "kmx_id"

.field public static final KEY_M2:Ljava/lang/String; = "m2"

.field public static final KEY_NEED_SRP_VERIFICATION:Ljava/lang/String; = "need_srp_verification"

.field public static final KEY_SAK_CERT:Ljava/lang/String; = "sak_cert"

.field public static final KEY_SIGN_ENC_CRED:Ljava/lang/String; = "sign_enc_cred"

.field public static final KMX_EV_SERVICE_ACTION:Ljava/lang/String; = "com.samsung.android.kmxservice.escrowvault.EV_SERVICE"

.field public static final KMX_PACKAGE:Ljava/lang/String; = "com.samsung.android.kmxservice"

.field public static final REQUEST_CAN_DELETE_CREDENTIAL:I = 0x68

.field public static final REQUEST_DELETE_CREDENTIAL:I = 0x69

.field public static final REQUEST_DELETE_CREDENTIAL_WITH_TA:I = 0xcc

.field public static final REQUEST_DELETE_ESCROW_INFO:I = 0x6a

.field public static final REQUEST_GET_CREDENTIAL_INFO:I = 0xce

.field public static final REQUEST_GET_EV_CRED_CERT:I = 0xc8

.field public static final REQUEST_GET_HSM_CRED_CERT:I = 0x65

.field public static final REQUEST_IS_EXIST_CREDENTIAL:I = 0x64

.field public static final REQUEST_NEED_SRP_VERIFICATION:I = 0xcd

.field public static final REQUEST_RECOVER_CREDENTIAL:I = 0x67

.field public static final REQUEST_RECOVER_CREDENTIAL_WITH_TA:I = 0xca

.field public static final REQUEST_REGISTER_CREDENTIAL:I = 0x66

.field public static final REQUEST_REGISTER_CREDENTIAL_WITH_TA:I = 0xc9

.field public static final REQUEST_UPDATE_CREDENTIAL_WITH_TA:I = 0xcb

.field public static final SERVICE_NAME:Ljava/lang/String; = "service_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
