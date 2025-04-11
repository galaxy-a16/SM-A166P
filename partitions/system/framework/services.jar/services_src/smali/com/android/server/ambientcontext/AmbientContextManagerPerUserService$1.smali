.class public abstract synthetic Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$1;
.super Ljava/lang/Object;
.source "AmbientContextManagerPerUserService.java"


# static fields
.field public static final synthetic $SwitchMap$com$android$server$ambientcontext$AmbientContextManagerPerUserService$ServiceType:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 461
    invoke-static {}, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->values()[Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$1;->$SwitchMap$com$android$server$ambientcontext$AmbientContextManagerPerUserService$ServiceType:[I

    :try_start_0
    sget-object v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->DEFAULT:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$1;->$SwitchMap$com$android$server$ambientcontext$AmbientContextManagerPerUserService$ServiceType:[I

    sget-object v1, Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;->WEARABLE:Lcom/android/server/ambientcontext/AmbientContextManagerPerUserService$ServiceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
