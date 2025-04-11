.class public Lcom/android/server/knox/zt/devicetrust/data/Utils$InstanceHolder;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final INSTANCE:Lcom/android/server/knox/zt/devicetrust/data/Utils;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/android/server/knox/zt/devicetrust/data/Utils;
    .locals 1

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/data/Utils$InstanceHolder;->INSTANCE:Lcom/android/server/knox/zt/devicetrust/data/Utils;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/knox/zt/devicetrust/data/Utils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/knox/zt/devicetrust/data/Utils;-><init>(Lcom/android/server/knox/zt/devicetrust/data/Utils-IA;)V

    sput-object v0, Lcom/android/server/knox/zt/devicetrust/data/Utils$InstanceHolder;->INSTANCE:Lcom/android/server/knox/zt/devicetrust/data/Utils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
