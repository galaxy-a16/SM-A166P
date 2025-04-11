.class public final Lcom/samsung/android/kmxservice/common/update/LivePref$Key;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/common/update/LivePref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/kmxservice/common/update/LivePref$Key;

.field public static final LATEST_STUB_RESPONSE:Ljava/lang/String; = "latestStubResponse"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/kmxservice/common/update/LivePref$Key;

    invoke-direct {v0}, Lcom/samsung/android/kmxservice/common/update/LivePref$Key;-><init>()V

    sput-object v0, Lcom/samsung/android/kmxservice/common/update/LivePref$Key;->INSTANCE:Lcom/samsung/android/kmxservice/common/update/LivePref$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
