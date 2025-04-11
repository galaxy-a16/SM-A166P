.class Lcom/samsung/android/kmxservice/common/util/SksAttestation$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/common/util/SksAttestation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/kmxservice/common/util/SksAttestation;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/kmxservice/common/util/SksAttestation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/kmxservice/common/util/SksAttestation;-><init>(I)V

    sput-object v0, Lcom/samsung/android/kmxservice/common/util/SksAttestation$LazyHolder;->INSTANCE:Lcom/samsung/android/kmxservice/common/util/SksAttestation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/samsung/android/kmxservice/common/util/SksAttestation;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/common/util/SksAttestation$LazyHolder;->INSTANCE:Lcom/samsung/android/kmxservice/common/util/SksAttestation;

    return-object v0
.end method
