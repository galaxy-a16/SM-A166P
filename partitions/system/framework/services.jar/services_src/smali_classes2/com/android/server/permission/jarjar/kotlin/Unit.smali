.class public final Lcom/android/server/permission/jarjar/kotlin/Unit;
.super Ljava/lang/Object;
.source "Unit.kt"


# static fields
.field public static final INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/Unit;

    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/Unit;-><init>()V

    sput-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "com.android.server.permission.jarjar.kotlin.Unit"

    return-object p0
.end method
