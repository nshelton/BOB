using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MossController : MonoBehaviour {

    [SerializeField]
    public float GrowthRate;

    [SerializeField]
    public float MaxMossRatio;


    [SerializeField]
    public float MossAmount = 0;


    private Renderer m_renderer;

    private void Start()
    {
        m_renderer = GetComponent<Renderer>();
        if (m_renderer == null)
            Debug.LogError("No renderer attached to the MossController! Cant control Moss!");
    }

    void Update ()
    {
        MossAmount += (Time.deltaTime / 60f) * GrowthRate;
        MossAmount = Mathf.Min(MossAmount, MaxMossRatio);
        m_renderer.material.SetFloat("_MossAmount", MossAmount);
    }
}
