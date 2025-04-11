.class public abstract Lcom/google/android/gms/internal/measurement/g4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/f4;

.field public static final b:Lcom/google/android/gms/internal/measurement/f4;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/f4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/f4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/g4;->a:Lcom/google/android/gms/internal/measurement/f4;

    :try_start_0
    const-class v0, Lcom/google/protobuf/v4;

    sget v1, Lcom/google/protobuf/v4;->a:I

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/f4;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/measurement/g4;->b:Lcom/google/android/gms/internal/measurement/f4;

    return-void
.end method
