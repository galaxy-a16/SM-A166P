.class Lcom/samsung/android/kmxservice/common/util/SakUidUtils$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/kmxservice/common/util/SakUidUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/kmxservice/common/util/SakUidUtils;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/kmxservice/common/util/SakUidUtils;-><init>(I)V

    sput-object v0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils$LazyHolder;->INSTANCE:Lcom/samsung/android/kmxservice/common/util/SakUidUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/samsung/android/kmxservice/common/util/SakUidUtils;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/common/util/SakUidUtils$LazyHolder;->INSTANCE:Lcom/samsung/android/kmxservice/common/util/SakUidUtils;

    return-object v0
.end method
