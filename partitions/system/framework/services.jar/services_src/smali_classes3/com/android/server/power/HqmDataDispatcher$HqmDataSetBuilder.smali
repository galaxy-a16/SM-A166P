.class public final Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;
.super Ljava/lang/Object;
.source "HqmDataDispatcher.java"


# instance fields
.field public mJsonObj:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->mJsonObj:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->mJsonObj:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\{"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\}"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->mJsonObj:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/HqmDataDispatcher$HqmDataSetBuilder;->mJsonObj:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
