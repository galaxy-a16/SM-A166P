.class public Lcom/android/server/enterprise/email/AccountSMIMECertificate;
.super Ljava/lang/Object;
.source "AccountsReceiver.java"


# instance fields
.field public mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mPassword:Ljava/lang/String;

.field public mPath:Ljava/lang/String;

.field public sMode:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    .line 299
    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPassword:Ljava/lang/String;

    .line 300
    iput p4, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->sMode:I

    .line 301
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method
