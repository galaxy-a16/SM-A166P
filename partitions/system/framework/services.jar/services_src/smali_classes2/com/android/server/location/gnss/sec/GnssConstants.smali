.class public abstract Lcom/android/server/location/gnss/sec/GnssConstants;
.super Ljava/lang/Object;
.source "GnssConstants.java"


# static fields
.field public static final EXTRA_COMMAND_APPROVED_APPS:[Ljava/lang/String;

.field public static final NAVIGATION_APP_LIST:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    const-string v0, "com.android.angryGps"

    const-string v1, "com.android.cts.verifier"

    const-string v2, "android.location.cts"

    const-string v3, "android.location.cts.gnss"

    const-string v4, "android.location.cts.fine"

    const-string v5, "android.location.cts.coarse"

    const-string v6, "com.android.shell"

    const-string v7, "android.seclocation.cts"

    const-string v8, "android.seclonglocation.cts"

    const-string v9, "com.google.android.location.gts"

    const-string v10, "com.starriver.gnsstester"

    const-string v11, "com.kt.serviceagent"

    const-string v12, "com.kaf.apitest"

    const-string v13, "com.kt.oladc"

    const-string v14, "com.rohdeschwarz.e112advanced"

    const-string v15, "com.cetecom.e112"

    const-string v16, "com.slbd.nmea2log"

    const-string v17, "com.gnssdemo"

    .line 48
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/gnss/sec/GnssConstants;->EXTRA_COMMAND_APPROVED_APPS:[Ljava/lang/String;

    const-string v0, "Y29tLnRlbmNlbnQubWFw"

    const-string v1, "Y29tLmJhaWR1LmNhcmxpZmU="

    const-string v2, "Y29tLmF1dG9uYXZpLm1pbmltYXA="

    const-string v3, "Y29tLmJhaWR1LkJhaWR1TWFw"

    .line 121
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/gnss/sec/GnssConstants;->NAVIGATION_APP_LIST:[Ljava/lang/String;

    return-void
.end method
