.class public final Lo0/b;
.super Landroidx/lifecycle/f1;
.source "SourceFile"


# static fields
.field public static final e:Lcom/google/android/gms/measurement/internal/u;


# instance fields
.field public final d:Ll/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/u;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/u;-><init>()V

    sput-object v0, Lo0/b;->e:Lcom/google/android/gms/measurement/internal/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/f1;-><init>()V

    new-instance v0, Ll/k;

    invoke-direct {v0}, Ll/k;-><init>()V

    iput-object v0, p0, Lo0/b;->d:Ll/k;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    iget-object p0, p0, Lo0/b;->d:Ll/k;

    iget v0, p0, Ll/k;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    iget-object v3, p0, Ll/k;->b:[Ljava/lang/Object;

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_0

    aput-object v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Ll/k;->c:I

    return-void

    :cond_1
    iget-object p0, p0, Ll/k;->b:[Ljava/lang/Object;

    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/google/protobuf/n;->w(Ljava/lang/Object;)V

    throw v1
.end method
