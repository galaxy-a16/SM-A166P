.class public abstract Lkotlinx/serialization/json/a0;
.super Lkotlinx/serialization/json/l;
.source "SourceFile"


# static fields
.field public static final Companion:Lkotlinx/serialization/json/z;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/z;

    invoke-direct {v0}, Lkotlinx/serialization/json/z;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/a0;->Companion:Lkotlinx/serialization/json/z;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/json/l;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract c()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/a0;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
